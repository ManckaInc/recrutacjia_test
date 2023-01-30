import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:hive/hive.dart';

void logIn(String login, String password) async {

  // Encode the login and password as base64
  var bytes = utf8.encode('$login:$password');
  var base64 = base64Encode(bytes);

  // Set up the headers to include the encoded login and password
  var headers = {
    'Authorization': 'Basic $base64',
    'Content-Type': 'application/json',
  };

  // Make the request
  var response = await http.get(Uri.parse('http://rekrutacja.maxiecu.com.pl/login'), headers: headers);

  if(response.statusCode==200){

    String data = response.body;

    print(data);

    //Write response.body code for us variable 'token' and 'jwtSecret'
    String token = jsonDecode(data)['token'];
    String jwtSecret = jsonDecode(data)['jwtSecret'];


    //Write jsonDecode code for us Hive base name 'Keys'
    var box = await Hive.openBox('Keys');
    await box.put('token', token);
    await box.put('jwtSecret', jwtSecret);

    getDataCars();

  }else{
    print(response.statusCode);
  }
}


void getDataCars() async {

  var box = await Hive.openBox('Keys');

  var token = await box.get('token');
  var base64 = base64Encode(utf8.encode(token));

  var response = await http.get(Uri.parse('http://rekrutacja.maxiecu.com.pl/brands'), headers: {
    'x-access-token': base64,
    'lang': 'pl',
    'type': 'elm327',
  });

  if(response.statusCode == 200){
    print(response.body);

  }else{
    print(response.statusCode);
  }
}

// Map<String, dynamic> parseJwt() {
//   String token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6Im1heGllY3UiLCJpYXQiOjE2NzQ3NzQ1NTYsImV4cCI6MTY3NDg2MDk1Nn0.YUSq4F9xiKiqktTKDtZxq5m_hduslpBK-CYH95X7NRA';
//   final parts = token.split('.');
//   if (parts.length != 3) {
//     throw Exception('invalid token');
//   }
//
//   final payload = _decodeBase64(parts[1]);
//   final payloadMap = json.decode(payload);
//   if (payloadMap is! Map<String, dynamic>) {
//     throw Exception('invalid payload');
//   }
//
//   return payloadMap;
// }
//
// String _decodeBase64(String str) {
//   String output = str.replaceAll('-', '+').replaceAll('_', '/');
//
//   switch (output.length % 4) {
//     case 0:
//       break;
//     case 2:
//       output += '==';
//       break;
//     case 3:
//       output += '=';
//       break;
//     default:
//       throw Exception('Illegal base64url string!"');
//   }
//   print(output);
//   return utf8.decode(base64Url.decode(output));
// }
