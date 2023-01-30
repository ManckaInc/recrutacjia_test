import 'package:flutter/material.dart';
import 'package:recrutacja_flutter/services/log_out_services.dart';
import 'package:recrutacja_flutter/utilities/constant.dart';

import '../screens/welcome_screen.dart';

class AppBarLogOut extends StatelessWidget {
  const AppBarLogOut({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff161B21),
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'MaxiEcu',
                style: kAppBarFirstTextStyle,
              ),
              Padding(
                padding: EdgeInsets.only(top: 9),
                child: Text(
                  'Flutter',
                  style: kSecondTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          child: SizedBox(
            width: 98,
            child: TextButton(
              style: kAppBarButtonStyle,
              onPressed: () {
                try{
                  hiveDelete();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomeScreen(),
                    ),
                  );
                  print('All object has been delete from phone storage.');
                }
                catch(e){
                  print(e);
                }

              },
              child: const Text(
                'Wyloguj',
                style: kAppBarButtonTextStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
