import 'package:flutter/material.dart';

class CardClass {
  late final String _imagePath;
  late final double _balance;
  late final String _cardNumber;
  late final bool _verified;
  late final String _expiredDate;
  late final String _cvv;
  late final Color _myColor ;




  CardClass(
      {required String imagePath,
      required double balance,
      required String cardNumber,
      required bool verified,
      required String expiredDate,
      String cvv = '123',
      Color? myColor})
      : _imagePath = imagePath,
        _balance = balance,
        _cardNumber = cardNumber,
        _verified = verified,
        _expiredDate = expiredDate,
        _cvv = cvv,
        _myColor = myColor??const Color(0xff1d2025);

  String get cvv => _cvv;

   set cvv(String cvv) => _cvv = cvv;

 Color get myColor => _myColor;

 set myColor(Color myColor) => _myColor = myColor;

  String get expiredDate => _expiredDate;

  set expiredDate(String expiredDate) => _expiredDate = expiredDate;

  String get imagePath => _imagePath;

  set imagePath(String imagePath) => _imagePath = imagePath;

  double get balance => _balance;

  set balance(double balance) => _balance = balance;

  String get cardNumber =>
      _cardNumber.replaceAll(RegExp(r'.{4}(?!$)'), r'**** ');

  set cardNumber(String cardNumber) => _cardNumber = cardNumber;

  bool get verified => _verified;

  set verified(bool verified) => _verified = verified;
}
