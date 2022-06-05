import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:save_your_balance/model/source_data.dart';

import '../widgets/card_type.dart';
import '../widgets/payment_type.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Container(
            height: 10,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.fromBorderSide(
                BorderSide(
                  color: Colors.grey.shade300,
                  style: BorderStyle.solid,
                  width: 0.5,
                ),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: Border(
            bottom: BorderSide(
          style: BorderStyle.solid,
          color: Colors.grey.shade300,
          width: 1,
        )),
        toolbarHeight: 80,
        title: RichText(
            text: TextSpan(
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 18,
          ),
          children: const <TextSpan>[
            TextSpan(text: 'Hi,'),
            TextSpan(
                text: ' Abdalaziz !',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        )),
      ),
      body: Container(
        // color: Colors.red,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 160,
              child: ListView.separated(
                itemCount: SourceData.listOfPaymentClass.length,
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, int index) {
                  return PaymentType(
                    paymentClass: SourceData.listOfPaymentClass[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 20,
                  );
                },
              ),
            ),
            ListTile(
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.grey.shade400,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              title: Text(
                'Super Card',
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap: () {
                print('Super Card');
              },
            ),
            SizedBox(
              height: 160,
              child: ListView.separated(
                itemCount: SourceData.listOfCardClass.length,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, int index) {
                  return CardType(
                    cardclass: SourceData.listOfCardClass[index],
                    myColor: index%2==0 ? Color(0xff1d2025) : Color(0xFFf0b18e),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 20,
                  );
                },
              ),
            ),
            ListTile(
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.grey.shade400,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              title: Text(
                'Super ATM',
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap: () {
                print('Super ATM');
              },
            ),
          ],
        ),
      ),
    );
  }
}
