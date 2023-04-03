import 'package:app_ui/screen/provider/home_provider.dart';
import 'package:app_ui/screen/provider/second_provider.dart';
import 'package:app_ui/screen/view/home_screen.dart';
import 'package:app_ui/screen/view/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),
        ChangeNotifierProvider(create: (context) => SecondProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' :  (context) => Homescreen(),
          'second' :  (context) => secondscreen(),
        },
      ),
    ),
  );
}