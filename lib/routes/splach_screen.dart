import 'package:flutter/material.dart';
import 'package:save_your_balance/helper/themes.dart';

import 'started_page.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      theme: MyTheme.lightDate,
      debugShowCheckedModeBanner: false,
      home: const StartedPage(),
    );
  }
}
