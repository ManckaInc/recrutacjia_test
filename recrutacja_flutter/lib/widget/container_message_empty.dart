import 'package:flutter/material.dart';


class ContainerValidData extends StatelessWidget {
  const ContainerValidData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      width: 337.0,
      height: 42.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          color: Color(0xff860000),
          width: 2.0,
        ),
        color: Color(0xff5B0012),
      ),
      child: const Text('Nieprawidłowe dane',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Roboto',
          fontSize: 18.0,
          fontWeight: FontWeight.w300,
          letterSpacing: 2.0,
        ),),
    );
  }
}
