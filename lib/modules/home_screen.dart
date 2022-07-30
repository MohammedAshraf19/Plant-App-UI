



import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/shared/style/colors.dart';

import '../models/product_details.dart';
import '../shared/components/featurePlantCard.dart';
import '../shared/components/header_with_search_box.dart';
import '../shared/components/recomend_plant_card.dart';
import '../shared/components/title_with_material_btn.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<ProductDetails>product = [
      ProductDetails(
          images: 'assets/images/image_1.png',
          price: '440',
          title:'samantha' ,
          country: 'russia',
      ),
      ProductDetails(
        images: 'assets/images/image_2.png',
        price: '440',
        title:'angelica' ,
        country: 'russia',
      ),
      ProductDetails(
        images: 'assets/images/image_3.png',
        price: '440',
        title:'samantha' ,
        country: 'russia',
      ),
    ];
    List images = [
      'assets/images/bottom_img_1.png',
      'assets/images/bottom_img_2.png'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: SvgPicture.asset('assets/icons/menu.svg'),
        ),
      ),
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics() ,
        child: Column(
          children: [
            HeaderWithSearchBox(size, context),
            titleWithMaterialBtn(title: 'Recomended',iconTitle: 'More'),
            Container(
              height: size.height * 0.3,
              padding:const EdgeInsets.symmetric(horizontal: 15) ,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                   return RecomendPlantCard(
                       size: size, context: context,
                       price: product[index].price, title: product[index].title, image: product[index].images,
                       country: product[index].country, press: (){},
                   );
                  },
                  physics:const BouncingScrollPhysics() ,
                  separatorBuilder: (context,index)=>SizedBox(width: 25,),

                  itemCount: product.length
              ),
            ),
            const SizedBox(height: 8,),
            titleWithMaterialBtn(title: 'Featured Plants',iconTitle: 'More'),
            Container(
              height: 183,
              padding:const EdgeInsets.symmetric(horizontal: 15) ,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return featurePlantCard(size: size, image: images[index]);
                  },
                  physics:const BouncingScrollPhysics() ,
                  itemCount: images.length
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0,10),
              blurRadius: 30,
              color: kPrimaryColor
            ),
          ]
        ),
        child: BottomNavigationBar(
          elevation: 10,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/flower.svg'),
              label: ''
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/flower.svg'),
                label: ''
            ),
          ],
        ),
      ),
    );
  }


}
