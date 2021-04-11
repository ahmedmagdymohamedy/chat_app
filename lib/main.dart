import 'package:flutter/material.dart';
import 'package:shat_app/models/MyConsts.dart';
import 'package:shat_app/screens/home%20screen/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      themeMode: ThemeMode.system,
      darkTheme: darkTheme(context),
      theme: lightTheme(context),
      home: HomeScreen(),
    );
  }
}

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: mPrimaryColor,
    scaffoldBackgroundColor: mScaffoldBackGroundColorLight,
    textTheme: Theme.of(context).textTheme.apply(bodyColor: mContainColorLight),
    iconTheme: IconThemeData(color: mPrimaryColor.withOpacity(0.4)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: mScaffoldBackGroundColorLight,
      selectedItemColor: mPrimaryColor,
      unselectedItemColor: mContainColorLight.withOpacity(0.3),
      showUnselectedLabels: true,
      elevation: 0,
    ),
  );
}

ThemeData darkTheme(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: mPrimaryColor,
    scaffoldBackgroundColor: mScaffoldBackGroundColorDark,
    textTheme: Theme.of(context).textTheme.apply(bodyColor: mContainColorDark),
    iconTheme: IconThemeData(color: mContainColorDark.withOpacity(0.4)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: mScaffoldBackGroundColorDark,
      selectedItemColor: mPrimaryColor,
      unselectedItemColor: mContainColorDark.withOpacity(0.3),
      showUnselectedLabels: true,
      elevation: 0,
    ),
  );
}
