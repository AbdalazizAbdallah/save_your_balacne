import 'package:flutter/material.dart';

import 'payment.dart';

import 'card.dart';

class SourceData {
  static List<PaymentClass> listOfPaymentClass = <PaymentClass>[
    PaymentClass(
        imagePath: 'assets/images/palpay.png',
        text: 'Paypal Income',
        balance: 1260.88),
    PaymentClass(
        imagePath: 'assets/images/amzon.png',
        text: 'Amazon Shop',
        balance: 285.62),
    PaymentClass(
        imagePath: 'assets/images/bitcoin.png',
        text: 'Bitcon pay',
        balance: 1260.88),
    PaymentClass(
        imagePath: 'assets/images/mastercard.png',
        text: 'Mastercard',
        balance: 285.62),
    PaymentClass(
        imagePath: 'assets/images/western_union.png',
        text: 'Western Union',
        balance: 1260.88),
    PaymentClass(
        imagePath: 'assets/images/amzon.png',
        text: 'Amazon Shop',
        balance: 285.62),
    PaymentClass(
        imagePath: 'assets/images/palpay.png',
        text: 'Paypal Income',
        balance: 1260.88),
    PaymentClass(
        imagePath: 'assets/images/amzon.png',
        text: 'Amazon Shop',
        balance: 285.62),
    PaymentClass(
        imagePath: 'assets/images/bitcoin.png',
        text: 'Bitcon pay',
        balance: 1260.88),
    PaymentClass(
        imagePath: 'assets/images/mastercard.png',
        text: 'Mastercard',
        balance: 285.62),
    PaymentClass(
        imagePath: 'assets/images/western_union.png',
        text: 'Western Union',
        balance: 1260.88),
    PaymentClass(
        imagePath: 'assets/images/bitcoin.png',
        text: 'Bitcon pay',
        balance: 1260.88),
    PaymentClass(
        imagePath: 'assets/images/mastercard.png',
        text: 'Mastercard',
        balance: 285.62),
    PaymentClass(
        imagePath: 'assets/images/western_union.png',
        text: 'Western Union',
        balance: 1260.88),
    PaymentClass(
        imagePath: 'assets/images/bitcoin.png',
        text: 'Bitcon pay',
        balance: 1260.88),
    PaymentClass(
        imagePath: 'assets/images/mastercard.png',
        text: 'Mastercard',
        balance: 285.62),
    PaymentClass(
        imagePath: 'assets/images/western_union.png',
        text: 'Western Union',
        balance: 1260.88),
  ];

  static List<CardClass> listOfCardClass = <CardClass>[
    CardClass(
      imagePath: 'assets/images/visa.png',
      balance: 1260.88,
      cardNumber: '1234412369877569',
      verified: true,
      expiredDate: '08/28',
    ),
    CardClass(
      imagePath: 'assets/images/mastercard_32.png',
      balance: 1260.88,
      cardNumber: '1234412369877569',
      verified: false,
      expiredDate: '04/24',
      myColor: const Color(0xFFf0b18e),
    ),
    CardClass(
      imagePath: 'assets/images/visa.png',
      balance: 1260.88,
      cardNumber: '1234412369877569',
      verified: true,
      expiredDate: '01/30',
      myColor: const Color(0xFFf0b18e),
    ),
    CardClass(
      imagePath: 'assets/images/mastercard_32.png',
      balance: 1260.88,
      cardNumber: '1234412369877569',
      verified: false,
      expiredDate: '12/22',
    ),
    CardClass(
      imagePath: 'assets/images/visa.png',
      balance: 1260.88,
      cardNumber: '1234412369877569',
      verified: true,
      expiredDate: '11/25',
    ),
    CardClass(
      imagePath: 'assets/images/mastercard_32.png',
      balance: 1260.88,
      cardNumber: '1234412369877569',
      verified: false,
      expiredDate: '06/27',
      myColor: const Color(0xFFf0b18e),
    ),
  ];
}
