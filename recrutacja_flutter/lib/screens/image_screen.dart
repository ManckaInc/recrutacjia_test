import 'package:flutter/material.dart';
import 'package:recrutacja_flutter/services/add_img.dart';
import 'dart:io';
import '../utilities/constant.dart';
import '../widget/image_options.dart';
import '../widget/log_out_app_bar.dart';


class ImageScreen extends StatefulWidget {

  static const id = 'image_screen';

  String nameBrand;


  ImageScreen({required this.nameBrand});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {

  File? _value;


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
            padding: EdgeInsets.fromLTRB(20, 0, 20, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: FloatingActionButton.extended(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    label: const Text('Powrót',
                    style: kTextBackButtonStyle,
                    ),
                    icon: const Icon(Icons.arrow_circle_left_outlined,
                    size: 40,
                    ),
                  ),
                ),
                Container(
                padding: const EdgeInsets.all(20.0),
                decoration: kMainContainerDecoration,
                  child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                        kOptionalText,
                        textAlign: TextAlign.justify,
                        style:kOptionalTextStyle,
                      ),
                       const SizedBox(
                        height: 20,
                      ),
                       GestureDetector(
                        onTap: ()  async{

                          _value = await getImage();

                          setState(() {
                            _value != null;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
                          decoration: kBoxDecorationAddImageContainer,
                          child: Center(
                              child: _value != null ? Container(
                                child: Image.file(File(_value!.path),
                              fit: BoxFit.cover,
                                ),
                              )
                                  : const AddImgOptions(),
                              ),
                          ),
                        ),
                      const SizedBox(
                        height: 30.0,
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
                            //send img to API
                        },
                            child: const Text(
                              'Wyślij',
                              style: kTextButtonStyleText,
                            ),
                        ),
                      ),
                    ],
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

