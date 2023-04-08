import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../resources/theme_manager.dart';
import 'app_routes.dart';

class App extends StatelessWidget {
  const App._internal();
  static const _instance = App._internal();
  factory App() => _instance;

  @override
  Widget build(BuildContext context) {
    return getMaterialApp(title: 'EM', buildContext: context);
  }

  Widget getMaterialApp(
      {required String title, required BuildContext buildContext}) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      onGenerateRoute: (settings) =>
          RouteGenerator(settings: settings).getRoute(),
      theme: getApplicationTheme(),
    );
  }

  void closeApp() {
    if (Platform.isAndroid) {
      SystemNavigator.pop();
    } else {
      exit(0);
    }
  }
}
