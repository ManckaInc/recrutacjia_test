import 'package:flutter/material.dart';
import 'package:recrutacja_flutter/utilities/constant.dart';

import '../widget/brands_list.dart';
import '../widget/log_out_app_bar.dart';

class BrandsScreen extends StatefulWidget {

  static const id = 'brand_screen';

  @override
  State<BrandsScreen> createState() => _BrandsScreenState();
}

class _BrandsScreenState extends State<BrandsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBarLogOut(),
      ),
      body: Container(
        decoration: kContainerDecoration,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: SizedBox(
              height: 710,
              width: 360,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Dostepne samochody:',
                    style: kTextCarListStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BrandsList(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}




