import 'package:flutter/material.dart';

import 'colors.dart';
import 'home.dart';
import 'login.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IoT Meetup App',
      theme: _kIoTTheme,
      home: MyHomePage(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => MyLoginPage(),
      fullscreenDialog: true,
    );
  }
}

final ThemeData _kIoTTheme = _buildIoTTheme();

ThemeData _buildIoTTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: kIoTsecondaryColor,
    primaryColor: kIoTprimaryColor,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: kIoTsecondaryColor,
      textTheme: ButtonTextTheme.normal,
    ),
    scaffoldBackgroundColor: kIoTBackgroundColor,
    textTheme: _buildIoTTextTheme(base.textTheme),
    primaryTextTheme: _buildIoTTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildIoTTextTheme(base.accentTextTheme),
  );
}

TextTheme _buildIoTTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline: base.headline.copyWith(
          fontWeight: FontWeight.w500,
        ),
        title: base.title.copyWith(
          fontSize: 18.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kIoTsecondaryTextColor,
      );
}
