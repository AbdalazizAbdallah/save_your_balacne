import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:save_your_balance/model/card.dart';

class CardType extends StatelessWidget {
  const CardType({
    Key? key,
    required this.cardclass,
    required this.myColor,
  }) : super(key: key);

  final CardClass cardclass;
  final Color myColor;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: myColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: SizedBox(
          height: 120,
          width: 220,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 40,
                        child: FittedBox(
                          fit: BoxFit.none,
                          child: Image.asset(
                            cardclass.imagePath,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      cardclass.verified
                          ? const Icon(Icons.check_circle,
                              color: Color(0xFFa8a9ea), size: 15)
                          : const SizedBox(),
                    ],
                  ),
                  Text(
                    cardclass.expiredDate,
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
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
                        text: NumberFormat('###,###.##')
                            .format(cardclass.balance),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    cardclass.cardNumber,
                    style: GoogleFonts.robotoMono(
                      color: Colors.white,
                      fontSize: 12,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
