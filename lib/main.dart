import 'package:flutter/cupertino.dart';

import 'routes/splach_screen.dart';

void main(List<String> args) {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SplachScreen();
  }
}
