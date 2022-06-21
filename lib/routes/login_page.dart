import 'package:flutter/material.dart';
import 'package:save_your_balance/helper/my_colors.dart';
import 'package:save_your_balance/routes.dart';
import 'package:save_your_balance/routes/create_account.dart';

import 'main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isObsureTextPasswordField = true;

  @override
  Widget build(BuildContext context) {
    ThemeData _myTheme = Theme.of(context);

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundColor: MyColor.myBlack,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Welcome Back',
                style: _myTheme.textTheme.headline4,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Sign to continue',
                style: _myTheme.textTheme.headline6,
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          label: Text('email'.toUpperCase()),
                          prefixIcon: const Icon(Icons.email),
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return '*Required';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        obscureText: isObsureTextPasswordField,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          label: Text('password'.toUpperCase()),
                          prefixIcon: const Icon(Icons.password),
                          suffixIcon: getSuffixIcon(),
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return '*Required';
                          } else {
                            return null;
                          }
                        },
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text('Forget Password?'),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('login successfully')),
                            );
                            Navigator.pushNamed(
                                context, RouteGenerator.mainPage);
                          }
                        },
                        child: Text('login'.toUpperCase()),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have account?',
                              style: TextStyle(fontSize: 12),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, RouteGenerator.createAccountPage);
                              },
                              child: const Text(
                                'Create a new account',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getSuffixIcon() {
    return isObsureTextPasswordField
        ? IconButton(
            onPressed: () {
              setState(() {
                isObsureTextPasswordField = !isObsureTextPasswordField;
              });
            },
            icon: const Icon(Icons.visibility))
        : IconButton(
            onPressed: () {
              setState(() {
                isObsureTextPasswordField = !isObsureTextPasswordField;
              });
            },
            icon: const Icon(Icons.visibility_off_rounded),
          );
  }
}
