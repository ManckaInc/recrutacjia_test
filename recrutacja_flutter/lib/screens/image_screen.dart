import 'package:flutter/material.dart';
import 'package:recrutacja_flutter/services/add_img.dart';
import 'dart:io';
import '../utilities/constant.dart';
import '../widget/image_options.dart';
import '../widget/log_out_app_bar.dart';
import 'package:image_picker/image_picker.dart';


class ImageScreen extends StatefulWidget {

  static const id = 'image_screen';

  String nameBrand;


  ImageScreen({required this.nameBrand});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {

  File? _value;

  Future getImage() async {
    ImagePicker picker  = ImagePicker();
    final image = await picker.getImage(source: ImageSource.gallery);
    if(image == null) return;
    final img = File(image.path);
    setState(() {
      this._value = img;
    });
  }

  String optionalText = 'In short, criteria of one of the market tendencies may motivate developers to work out The Crash of Interrelational Index (Alec Leslie in The Book of the Base Configuration).\n On the one hand it can be said that the major accomplishments, such as the systolic approach, the draft analysis and prior decisions and early design solutions, the outline design stage or the subsequent actions comprehensively the design aspects.';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBarLogOut(),
      ),
      body: Container(
        decoration: kContainerDecoration,
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: kMainContainerDecoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.nameBrand,
                    style: kTitleTextStyle,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    optionalText,
                    textAlign: TextAlign.justify,
                    style:kOptionalTextStyle,
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  GestureDetector(
                    onTap: (){
                      getImage();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
                      decoration: kBoxDecorationAddImageContainer,
                      child: Center(
                          child: _value != null ? Container(child: Image.file(_value!,
                          fit: BoxFit.cover,),) : AddImgOptions(),
                          ),
                      ),
                    ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 251,
                    height: 48,
                    child: TextButton(
                      style: kTextButtonStyle.copyWith(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                        onPressed: (){

                    },
                        child: const Text(
                          'Wyślij',
                          style: kTextButtonStyleText,
                        ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

