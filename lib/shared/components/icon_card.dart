import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/shared/style/colors.dart';

Container iconCard({
  required Size size,
  required String icon,
}) {
  return Container(
    height: 62,
    margin: EdgeInsets.symmetric(vertical: size.height *0.03),
    padding:EdgeInsets.all(kDefaultPadding /2) ,
    width: 62,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0,15),
          color: kPrimaryColor.withOpacity(0.2),
          blurRadius: 22,
        ),
        const BoxShadow(
          offset: Offset(-15,-15),
          color: Colors.white,
          blurRadius: 22,
        ),
      ],
    ),
    child: SvgPicture.asset(icon),
  );
}