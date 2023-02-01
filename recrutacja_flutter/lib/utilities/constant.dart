import 'package:flutter/material.dart';


//Welcome_screen, Login_Screen style constant


const kContainerDecoration = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xff1C2330),
          Color(0xff020407),
        ]
    )
);

const kRecrutacjaStyle = TextStyle(
  color: Colors.white,
  fontSize: 52.0,
  fontWeight: FontWeight.w400,
  fontFamily: 'Oswald',
);

const kFlutterStyle = TextStyle(
  color: Colors.white,
  fontSize: 22.0,
  fontWeight: FontWeight.w300,
  fontFamily: 'Roboto',
  letterSpacing: 8.0,
);
ButtonStyle kTextButtonStyle = ButtonStyle(
  elevation: const MaterialStatePropertyAll(0.0),
  backgroundColor: const MaterialStatePropertyAll(
    Color(0xff2881ab),
  ),
  shape: MaterialStatePropertyAll(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(2.0),
    ),
  ),
);

const kTextButtonStyleText = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
  letterSpacing: 4.0,
);

const kTextStyleLoginLabel = TextStyle(
  color: Colors.white,
  fontFamily: 'Roboto',
  fontSize: 18.0,
  fontWeight: FontWeight.w300,
  letterSpacing: 2.0,
);

const kInputDecorationTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Color(0xff222731),
  labelText: 'Login',
  labelStyle: TextStyle(
    color: Colors.white,
    fontFamily: 'Roboto',
    fontSize: 18.0,
    fontWeight: FontWeight.w300,
    letterSpacing: 2.0,
  ),
  floatingLabelStyle: TextStyle(
    color: Color(0xff788b9a),
  ),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6.0))
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      width: 0.0,
      color: Color(0xff222731),
    ),
  ),
);

const kCursorStyle = Colors.white;

//End Welcome_screen, Login_Screen style constant

//Start brands list screen style constant

const kAppBarFirstTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 24.0,
  fontWeight:FontWeight.w400,
  fontFamily: 'Oswald',
);

const kSecondTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 22.0,
  fontWeight: FontWeight.w300,
  fontFamily: 'Roboto',
  letterSpacing: 10.0,
);

ButtonStyle kAppBarButtonStyle = ButtonStyle(
    backgroundColor:  const MaterialStatePropertyAll(
      Color(0xff264053),
    ),
    shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)
        )
    )
);

const kAppBarButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboco',
  letterSpacing: 2.0,
);

const kTextCarListStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Roboto',
  fontSize: 18.0,
  fontWeight: FontWeight.w300,
  letterSpacing: 2.0,
);

BoxDecoration kBoxDecorationMainListViewContainer = BoxDecoration(
    color: const Color(0xff13191E),
    borderRadius: BorderRadius.circular(5.0),
    border: Border.all(
      width: 1.0,
      color: const Color(0xff2C3340),
    )
);

BoxDecoration kNEWTextStyleContainerOne = BoxDecoration(
  borderRadius: BorderRadius.circular(4.0),
  gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xffF6B500),
        Color(0xffD12D00),
      ]
  ),
);

BoxDecoration kNEWTextStyleContainerTwo =BoxDecoration(
  borderRadius: BorderRadius.circular(4.0),
  gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xffAC00FF),
        Color(0xff214AE3),
      ]
  ),
);

const kTextStyleLeading = TextStyle(
color: Colors.white,
fontFamily: 'Roboto',
fontSize: 18.0,
fontWeight: FontWeight.w300,
letterSpacing: 2.0,
);

const kTextStyleTrailing = TextStyle(
  color: Colors.black,
  fontFamily: 'Oswald',
  fontSize: 10.0,
  fontWeight: FontWeight.w500,
);

//End brands screen Style

//Start Image screen style

const kTitleTextStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Roboto',
  fontSize: 24.0,
  fontWeight: FontWeight.w300,
  letterSpacing: 2.0,
);

const kOptionalTextStyle = TextStyle(
    color: Color(0xff9AAAC1),
    fontFamily: 'Roboto',
    fontSize: 14.0,
    fontWeight: FontWeight.w300
);

BoxDecoration kBoxDecorationAddImageContainer = BoxDecoration(
    borderRadius: BorderRadius.circular(5.0),
    border: Border.all(
      color: Color(0xff234F5F),
      width: 3,
    ),
    boxShadow: const [
      BoxShadow(
        color: Color.fromRGBO(40, 129, 171, 0.15), //color of shadow
        spreadRadius: 4, //spread radius
        blurRadius: 0, // blur radius
        offset: Offset(0, 0),
      ),
    ]
);

const kTextStyleAddImgCon = TextStyle(
  color: Color(0xff00e1ff),
  fontFamily: 'Roboto',
  fontSize: 14.0,
  fontWeight: FontWeight.w300,
);

const kSecTextStyleAddImgCon = TextStyle(
  color: Color(0xff4a7d84),
  fontFamily: 'Roboto',
  fontSize: 14.0,
  fontWeight: FontWeight.w300,
);

BoxDecoration kMainContainerDecoration = BoxDecoration(
borderRadius: BorderRadius.circular(6),
color: const Color(0xff10151C),
border: Border.all(
width: 1.0,
color: const Color(0xff2C3340),
)
);

String kOptionalText ='In short, criteria of one of the market tendencies may motivate developers to work out The Crash of Interrelational Index (Alec Leslie in The Book of the Base Configuration).\n On the one hand it can be said that the major accomplishments, such as the systolic approach, the draft analysis and prior decisions and early design solutions, the outline design stage or the subsequent actions comprehensively the design aspects.';