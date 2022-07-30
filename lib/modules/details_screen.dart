import 'package:flutter/material.dart';
import 'package:plant_app/shared/style/colors.dart';
import '../shared/components/images_and_icons.dart';
import '../shared/components/title_and_price.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics() ,
        child: Column(
          children: [
            imageAndIcons(size: size,context: context,image: 'assets/images/img.png'),
            titleAndPrice(context: context,country: 'russia',price: '440',title:'samantha' ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: kPrimaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20))
                    ),
                    height: 84,
                    minWidth: size.width /2,
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
                    ),
                    height: 84,
                    minWidth: size.width /2,
                    child: const Text(
                      'Description',
                      style: TextStyle(
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: kDefaultPadding *2,
            ),
          ],
        ),
      ),
    );
  }




}
