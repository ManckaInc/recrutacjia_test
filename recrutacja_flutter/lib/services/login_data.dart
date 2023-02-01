import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:jwt_decode/jwt_decode.dart';

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
  var decToken = Jwt.parseJwt(token);


  var response = await http.get(Uri.parse('http://rekrutacja.maxiecu.com.pl/brands'), headers: {
    'x-access-token': "$decToken",
    'lang': 'pl',
    'type': 'elm327',
  });

  if(response.statusCode == 200){
    print(response.body);

  }else{
    print(response.statusCode);
  }
}
