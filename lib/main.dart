import 'package:flutter/material.dart';
import 'package:plant_app/modules/home_screen.dart';

import 'shared/style/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
       primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        backgroundColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      home: const HomeScreen(),
    );
  }
}
