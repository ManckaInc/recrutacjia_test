import 'package:flutter/material.dart';
import 'package:recrutacja_flutter/screens/brand_screen.dart';
import 'package:recrutacja_flutter/services/login_data.dart';

import '../utilities/constant.dart';
import '../widget/container_message_empty.dart';

class LoginScreen extends StatefulWidget {

  static const id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _text = TextEditingController();
  bool _validate = false;

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
                    _validate == true ? const ContainerValidData() : const SizedBox(),
                    Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: SizedBox(
                      width: 337,
                      height: 49,
                      child: TextField(
                        controller: _text,
                        cursorColor: kCursorStyle,
                        style: kTextStyleLoginLabel,
                        decoration: _validate == false ? kInputDecorationTextFieldStyle : kInputDecorationTextFieldStyleValidate,
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
                      decoration: _validate == false ? kInputDecorationTextFieldStyle.copyWith(labelText: 'Hasło',) : kInputDecorationTextFieldStyleValidate.copyWith(labelText: 'Hasło',),
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
                          setState(() {
                            _text.text.isEmpty ? _validate = true : _validate = false;
                          });
                          if(_validate == false){
                            try{
                              logIn('$login','$password');
                              Navigator.push(context, MaterialPageRoute(builder: (context) => BrandsScreen()));
                            }
                            catch(e){
                                print(e);
                            }
                          }
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
