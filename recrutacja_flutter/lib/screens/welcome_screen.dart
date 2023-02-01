import 'package:flutter/material.dart';
import 'package:recrutacja_flutter/screens/login_screen.dart';
import 'package:recrutacja_flutter/utilities/constant.dart';

class WelcomeScreen extends StatefulWidget {

  static const id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kContainerDecoration,
        child: Center(
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
                  height: 300,
                ),
                SizedBox(
                  width: 251,
                  height: 48,
                  child: TextButton(
                      style: kTextButtonStyle,
                        onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen() ));
                        },
                        child: const Text(
                            'Zaloguj',
                          style: kTextButtonStyleText,
                        ),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
