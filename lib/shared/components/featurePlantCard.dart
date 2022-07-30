import 'package:flutter/cupertino.dart';
import 'package:plant_app/shared/style/colors.dart';

Widget featurePlantCard({
  required Size size,
  required String image,
}) {
  return Container(
    margin:const EdgeInsets.only(
        right: kDefaultPadding,
        bottom: kDefaultPadding /2,
        top: kDefaultPadding /2
    ) ,
    width: size.width * 0.8,
    height: 185,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage(
            image
        ),
      ),
    ),
  );
}
