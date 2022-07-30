import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/modules/details_screen.dart';
import 'package:plant_app/shared/style/colors.dart';

Widget RecomendPlantCard({
  required Size size,
  required BuildContext context,
  required String price,
  required String title,
  required String image,
  required String country,
  required final Function press,
}) {
  return InkWell(
    onTap: (){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context)=>DetailsScreen())
      );
    },
    child: Container(
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          Container(
            padding:const EdgeInsets.all(kDefaultPadding /2 ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                    offset: const Offset(0,10),

                  )
                ]
            ),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title \n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                            text: '$country'.toUpperCase(),
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            )
                        )
                      ]
                  ),
                ),
                Spacer(),
                Text(
                  '\$$price',
                  style: Theme.of(context).textTheme.button!.copyWith(color: kPrimaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

