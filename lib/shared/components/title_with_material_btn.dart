import 'package:flutter/material.dart';
import 'package:plant_app/shared/style/colors.dart';

Widget titleWithMaterialBtn({
  required String title,
  required String iconTitle,
}) {
  return Padding(
    padding:  const EdgeInsets.symmetric(horizontal: kDefaultPadding),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 24,
          child: Stack(
            children:  [
              Padding(
                padding: const EdgeInsets.only(right: kDefaultPadding /4),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  margin:const EdgeInsets.only(right: kDefaultPadding /4) ,
                  color: kPrimaryColor.withOpacity(0.2),
                  height: 7,
                ),
              )
            ],
          ),
        ),
        const Spacer(),
        MaterialButton(
          onPressed: (){},
          minWidth: 10,
          height: 30,
          color: kPrimaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          child:  Text(
            iconTitle,
            style: const TextStyle(
                color: Colors.white
            ),
          ),
        )
      ],
    ),
  );
}

