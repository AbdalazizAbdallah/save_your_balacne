import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:save_your_balance/model/source_data.dart';
import 'package:save_your_balance/routes/third_page.dart';

import '../widgets/appbar.dart';
import '../widgets/card_type.dart';
import '../widgets/payment_type.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(mainWord: 'Abdalaziz !', greeting: 'Hi, '),
      body: SingleChildScrollView(
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
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const ThirdPage();
                }));
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
                    myColor:
                        index % 2 == 0 ? Color(0xff1d2025) : Color(0xFFf0b18e),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: SizedBox(
                height: 180,
                width: double.infinity,
                child: Card(
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('assets/images/map.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

