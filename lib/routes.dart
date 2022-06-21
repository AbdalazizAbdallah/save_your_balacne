import 'package:flutter/material.dart';
import 'package:save_your_balance/routes/add_card.dart';
import 'package:save_your_balance/routes/create_account.dart';
import 'package:save_your_balance/routes/login_page.dart';
import 'package:save_your_balance/routes/main_page.dart';
import 'package:save_your_balance/routes/started_page.dart';
import 'package:save_your_balance/routes/super_card.dart';

class RouteGenerator {
  static const String homePage = '/';
  static const String addCardPage = '/add_card';
  static const String createAccountPage = '/create_account';
  static const String loginPage = '/login';
  static const String mainPage = '/main_page';
  static const String superCardPage = '/super_card';

  RouteGenerator._() {}

  static Route<dynamic> generateRoute(RouteSettings settings) {
//4.
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (_) => const StartedPage(),
        );
      case addCardPage:
        return MaterialPageRoute(
          builder: (_) => const AddCardPage(),
        );
      case createAccountPage:
        return MaterialPageRoute(
          builder: (_) => const CreateAccountPage(),
        );
      case loginPage:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case mainPage:
        return MaterialPageRoute(
          builder: (_) => const MainPage(),
        );
      case superCardPage:
        return MaterialPageRoute(
          builder: (_) => const SuperCardPage(),
        );
      default:
        throw FormatException("Route not found");
    }
  }
}
