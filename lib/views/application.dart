import 'package:cake_corner/views/navigator/navigator.dart';
import 'package:flutter/material.dart';

// Design takedn from :
// https://static.dribbble.com/users/2727836/screenshots/5639872/_cake_app_design1.png
class CakeApplication extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        fontFamily: 'Nunito',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        accentColor: Colors.red.shade200,

        //brightness: Brightness.dark
        //appBarTheme: AppBarTheme(elevation: 2, brightness: Brightness.dark),
        //fontFamily: GoogleFont.lato
      ),
      home: PageNavigator(),
    );
  }
}
