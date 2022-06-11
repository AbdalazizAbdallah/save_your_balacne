import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

enum PasswordEnum {
  confirm,
  normalPassword,
}

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool isObsureTextPasswordField = true;
  bool isObsureTextConfirmPasswordField = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ThemeData _myTheme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(),
        toolbarHeight: 56,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Create Account',
                style: _myTheme.textTheme.headline4,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Create a new account',
                style: _myTheme.textTheme.headline6,
              ),
              const SizedBox(
                height: 10,
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
                          label: Text('name'.toUpperCase()),
                          prefixIcon: const Icon(Icons.person),
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
                        keyboardType: TextInputType.emailAddress,
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
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          PhoneInputFormatter(
                            onCountrySelected: (PhoneCountryData? countryData) {
                              print(countryData!.country);
                            },
                          )
                        ],
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          label: Text('phone'.toUpperCase()),
                          prefixIcon: const Icon(Icons.phone),
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
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: isObsureTextPasswordField,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          label: Text('password'.toUpperCase()),
                          prefixIcon: const Icon(Icons.password),
                          suffixIcon: getSuffixIcon(isObsureTextPasswordField,
                              PasswordEnum.normalPassword),
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
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: isObsureTextConfirmPasswordField,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          label: Text('confirm password'.toUpperCase()),
                          prefixIcon: const Icon(Icons.password),
                          suffixIcon: getSuffixIcon(
                              isObsureTextConfirmPasswordField,
                              PasswordEnum.confirm),
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
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Account created successfully')),
                            );
                          }
                        },
                        child: Text('create a account'.toUpperCase()),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have a account?',
                              style: TextStyle(fontSize: 12),
                            ),
                            TextButton(
                              onPressed: () {
                                /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CreateAccountPage()));*/
                                  Navigator.pop(context);          
                              },
                              child: const Text(
                                'Login',
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

  Widget getSuffixIcon(bool value, PasswordEnum type) {
    return value
        ? IconButton(
            onPressed: () {
              setState(() {
                if (type == PasswordEnum.confirm) {
                  isObsureTextConfirmPasswordField =
                      !isObsureTextConfirmPasswordField;
                } else if (type == PasswordEnum.normalPassword) {
                  isObsureTextPasswordField = !isObsureTextPasswordField;
                }
              });
            },
            icon: const Icon(Icons.visibility))
        : IconButton(
            onPressed: () {
              setState(() {
                if (type == PasswordEnum.confirm) {
                  isObsureTextConfirmPasswordField =
                      !isObsureTextConfirmPasswordField;
                } else if (type == PasswordEnum.normalPassword) {
                  isObsureTextPasswordField = !isObsureTextPasswordField;
                }
              });
            },
            icon: const Icon(Icons.visibility_off_rounded),
          );
  }
}
