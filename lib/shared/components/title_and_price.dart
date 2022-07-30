import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/shared/style/colors.dart';

Padding titleAndPrice({
  required BuildContext context,
  required String price,
  required String country,
  required String title,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
    child: Row(
      children: [
        RichText(
          text: TextSpan(
              children: [
                TextSpan(
                  text: '$title \n'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: kTextColor,
                      fontWeight: FontWeight.bold
                  ),
                ),
                TextSpan(
                    text: '$country'.toUpperCase(),
                    style: const TextStyle(
                        color: kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w300
                    )
                )
              ]
          ),
        ),
        Spacer(),
        Text(
          '\$$price',
          style: Theme.of(context).textTheme.headline5!.copyWith(color: kPrimaryColor),
        ),
      ],
    ),
  );
}
