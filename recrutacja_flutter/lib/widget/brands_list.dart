import 'package:flutter/material.dart';
import 'package:recrutacja_flutter/screens/image_screen.dart';
import 'package:recrutacja_flutter/utilities/constant.dart';
import '../models/brand.dart';


class BrandsList extends StatefulWidget {

  @override
  State<BrandsList> createState() => _BrandsListState();
}

class _BrandsListState extends State<BrandsList> {

  final style = kNEWTextStyleContainerOne;

  List<Brand> brands = [
    Brand(name: 'Alpha Romeo'),
    Brand(name: 'Audi'),
    Brand(name: '...'),
    Brand(name: '...'),
    Brand(name: '...'),
    Brand(name: '...'),
    Brand(name: '...'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index){
      return GestureDetector(
        onTap: (){
          Navigator.push(
              context, MaterialPageRoute(
            builder: (context) => ImageScreen(nameBrand: brands[index].name,),
          )
          );
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 2),
          decoration: kBoxDecorationMainListViewContainer,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    brands[index].name,
                  style: kTextStyleLeading,
                ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    decoration: kNEWTextStyleContainerTwo,
                    child: const Text(
                      'NEW',
                      style: kTextStyleTrailing,
                    ),
                  ),
              ],
            ),
          ),
        ),
      );
    },
      itemCount: brands.length,
    );
  }
}