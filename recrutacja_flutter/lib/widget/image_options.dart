import 'package:flutter/material.dart';

import '../utilities/constant.dart';

class AddImgOptions extends StatelessWidget {
  const AddImgOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.add_a_photo,
          size: 50,
          color: Color(0xff5BE4FF),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Wybierz zdjęcie z urządzenia',
          style: kTextStyleAddImgCon,
        ),
        Text(
          'plik .jpg nie większy niż 10MB',
          style: kSecTextStyleAddImgCon,
        ),
      ],
    );
  }
}
