import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/shared/components/icon_card.dart';
import 'package:plant_app/shared/style/colors.dart';

Padding imageAndIcons({
  required Size size,
  required BuildContext context,
  required String image,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: kDefaultPadding *3),
    child: SizedBox(
      height: size.height * .8,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 60,left: 15,bottom: 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(
                        'assets/icons/back_arrow.svg',
                        alignment: Alignment.topLeft,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  const Spacer(),
                  iconCard(size: size,icon: 'assets/icons/sun.svg'),
                  iconCard(size: size,icon: 'assets/icons/icon_2.svg'),
                  iconCard(size: size,icon: 'assets/icons/icon_3.svg'),
                  iconCard(size: size,icon: 'assets/icons/icon_4.svg'),
                ],
              ),
            ),
          ),
          Container(
            height:size.height * .8,
            width: size.width * 0.75,
            decoration:  BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0,10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(.29)
                  ),
                ],
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(80),bottomLeft: Radius.circular(80)),
                image:  DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    image,
                  ),
                )
            ),
          ),
        ],
      ),
    ),
  );
}
