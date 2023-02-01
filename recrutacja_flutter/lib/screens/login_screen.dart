import 'package:flutter/material.dart';
import 'package:recrutacja_flutter/screens/brand_screen.dart';
import 'package:recrutacja_flutter/services/login_data.dart';

import '../utilities/constant.dart';

class LoginScreen extends StatefulWidget {

  static const id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String? password;
  String? login;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kContainerDecoration,
        child: Center(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Recrutacja',
                    style: kRecrutacjaStyle,
                  ),
                  const Text(
                    'Flutter',
                    style: kFlutterStyle,
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                    Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: SizedBox(
                      width: 337,
                      height: 49,
                      child: TextField(
                        cursorColor: kCursorStyle,
                        style: kTextStyleLoginLabel,
                        decoration: kInputDecorationTextFieldStyle,
                        onChanged: (value){
                          login = value;
                        },
                      ),
                  ),
                   ),
                  SizedBox(
                    width: 337,
                    height: 49,
                    child: TextField(
                      obscureText: true,
                      cursorColor: kCursorStyle,
                      style: kTextStyleLoginLabel,
                      decoration: kInputDecorationTextFieldStyle.copyWith(labelText: 'Hasło',),
                      onChanged: (value){
                        password = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: SizedBox(
                      width: 251,
                      height: 48,
                      child: TextButton(
                        style: kTextButtonStyle,

                        onPressed: ()  {
                          setState (() {
                          });
                          try{
                            logIn('$login','$password');
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BrandsScreen()));
                          }
                          catch(e){
                              print(e);
                          }
                          setState (() {
                          });
                         },
                        child: const Text(
                          'Zaloguj',
                          style: kTextButtonStyleText,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
