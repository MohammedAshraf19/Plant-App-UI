import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/shared/style/colors.dart';

Widget HeaderWithSearchBox(
    Size size, BuildContext context
    )
{
  return Container(
    margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
    height: size.height * 0.2,
    child: Stack(
      children: [
        Container(
          padding:const EdgeInsets.only(right: kDefaultPadding,left: kDefaultPadding,bottom: kDefaultPadding + 36) ,
          height: size.height *0.2 -27,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36),bottomRight: Radius.circular(36)),
            color: kPrimaryColor,
          ),
          child: Row(
            children: [
              Text(
                'Hi Uishopy',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),

              ),
              Spacer(),
              Image.asset('assets/images/logo.png'),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            margin:EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding:EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ]
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Search',
                      labelStyle: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                SvgPicture.asset('assets/icons/search.svg'),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}