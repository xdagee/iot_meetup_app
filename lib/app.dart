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
  );
}
