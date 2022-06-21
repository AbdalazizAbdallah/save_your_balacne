import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:save_your_balance/routes.dart';

import 'helper/themes.dart';


void main(List<String> args) {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightDate,
      debugShowCheckedModeBanner: false,
      initialRoute: RouteGenerator.homePage,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
