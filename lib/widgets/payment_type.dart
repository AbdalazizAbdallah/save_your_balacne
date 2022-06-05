import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:save_your_balance/model/payment.dart';

class PaymentType extends StatelessWidget {
  const PaymentType({
    Key? key,
   required this.paymentClass,
  }) : super(key: key);

  final PaymentClass paymentClass;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      constraints: const BoxConstraints(
        minWidth: 200,
        minHeight: 130,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFFf9f9f9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
            child: Image.asset(paymentClass.imagePath),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            paymentClass.text,
            style: GoogleFonts.roboto(
              color: Colors.grey.shade400,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          RichText(
            text: TextSpan(
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '\$',
                  style: GoogleFonts.piazzolla(
                    fontSize: 16,
                    fontFeatures: <FontFeature>[
                      const FontFeature.subscripts(),
                    ],
                  ),
                ),
                TextSpan(
                  text: NumberFormat('###,###.##').format(paymentClass.balance),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
