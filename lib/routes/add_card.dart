import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save_your_balance/model/card.dart';
import 'package:save_your_balance/model/source_data.dart';
import 'package:save_your_balance/widgets/appbar.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({Key? key}) : super(key: key);

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expiredController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  bool isErrorCardNumber = false;
  bool isErrorExpired = false;
  bool isErrorCvv = false;
  bool isObsureTextCardNumber = true;
  bool isCheckedVerifiedCheckbox = false;

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder enabledInputBorder =
        getOutlineInputBorder(color: Colors.black);
    OutlineInputBorder focusedInputBorder =
        getOutlineInputBorder(color: Theme.of(context).primaryColor);
    OutlineInputBorder errorInputBorder =
        getOutlineInputBorder(color: Theme.of(context).errorColor);

    return Scaffold(
      appBar: const MyAppBar(
        mainWord: 'Add Card',
        hideDrawerButon: true,
        visibleBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              constraints: const BoxConstraints(
                maxHeight: 200,
              ),
              width: double.infinity,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('assets/images/visaCard.png'),
              ),
              height: 200,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                        CreditCardNumberInputFormatter()
                      ],
                      onChanged: (value) {
                        if (value.isEmpty) {
                          isErrorCardNumber = true;
                        } else {
                          isErrorCardNumber = false;
                        }

                        setState(() {});
                      },
                      controller: cardNumberController,
                      obscureText: isObsureTextCardNumber,
                      decoration: InputDecoration(
                        helperText: '*Required',
                        errorText: isErrorCardNumber ? '*Required' : null,
                        labelText: 'Card number',
                        hintText: 'XXXX XXXX XXXX XXXX',
                        prefixIconConstraints: const BoxConstraints(
                          maxWidth: 40,
                          maxHeight: 40,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Image.asset(
                            'assets/images/visa.png',
                            color: Colors.black,
                          ),
                        ),
                        suffixIcon: getSuffixIcon(),
                        enabledBorder: enabledInputBorder,
                        focusedBorder: focusedInputBorder,
                        focusedErrorBorder: errorInputBorder,
                        errorBorder: errorInputBorder,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: TextField(
                              controller: expiredController,
                              onChanged: (value) {
                                if (value.isEmpty) {
                                  isErrorExpired = true;
                                } else {
                                  isErrorExpired = false;
                                }

                                setState(() {});
                              },
                              inputFormatters: [
                                CreditCardExpirationDateFormatter()
                              ],
                              decoration: InputDecoration(
                                helperText: '*Required',
                                errorText: isErrorExpired ? '*Required' : null,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto,
                                labelText: 'Expired Date',
                                hintText: '00/00',
                                prefixIconConstraints: const BoxConstraints(
                                  maxWidth: 80,
                                  maxHeight: 40,
                                ),
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.date_range_rounded),
                                ),
                                enabledBorder: enabledInputBorder,
                                focusedBorder: focusedInputBorder,
                                focusedErrorBorder: errorInputBorder,
                                errorBorder: errorInputBorder,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          child: TextField(
                            controller: cvvController,
                            onChanged: (value) {
                              if (value.isEmpty) {
                                isErrorCvv = true;
                              } else {
                                isErrorCvv = false;
                              }

                              setState(() {});
                            },
                            inputFormatters: [CreditCardCvcInputFormatter()],
                            decoration: InputDecoration(
                              helperText: '*Required',
                              errorText: isErrorCvv ? '*Required' : null,
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              labelText: 'CVV',
                              hintText: '123',
                              prefixIconConstraints: const BoxConstraints(
                                maxWidth: 80,
                                maxHeight: 40,
                              ),
                              prefixIcon: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.credit_card),
                              ),
                              enabledBorder: enabledInputBorder,
                              focusedBorder: focusedInputBorder,
                              focusedErrorBorder: errorInputBorder,
                              errorBorder: errorInputBorder,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          value: isCheckedVerifiedCheckbox,
                          onChanged: (bool? value) {
                            setState(() {
                              isCheckedVerifiedCheckbox = value!;
                            });
                          },
                        ),
                        Text('Verified',
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 16,
                            )),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(220, 50),
                      primary: Colors.black,
                      // padding: const EdgeInsets.all(15),
                    ),
                    onPressed: () {
                      if (!(cardNumberController.text.isEmpty &&
                          cvvController.text.isEmpty &&
                          expiredController.text.isEmpty)) {
                        String cardNumberWithoutSpace =
                            cardNumberController.text.replaceAll(' ', '');     
                        String expiredDateString = expiredController.text;

                        String cardNumberWithoutSpaceIflarge = cardNumberWithoutSpace.length>=16 ? cardNumberWithoutSpace.substring(0,16) : cardNumberWithoutSpace ;

                        CardClass cardClass = CardClass(
                          imagePath: 'assets/images/visa.png',
                          balance: genrateBalanceRandomly(),
                          cardNumber: cardNumberWithoutSpaceIflarge,
                          verified: isCheckedVerifiedCheckbox,
                          expiredDate: expiredDateString,
                          myColor: const Color.fromARGB(255, 0, 46, 86),
                        );

                        SourceData.listOfCardClass.insert(0, cardClass);

                        Navigator.pop(context);
                      }
                    },
                    child: Text(
                      'Add Card',
                      style: GoogleFonts.questrial(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  OutlineInputBorder getOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: color,
        width: 1,
      ),
    );
  }

  double genrateBalanceRandomly() {
    return 1000 + (Random().nextDouble() * 10000);
  }

  Widget getSuffixIcon(){
    return isObsureTextCardNumber
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    isObsureTextCardNumber =
                                        !isObsureTextCardNumber;
                                  });
                                },
                                icon: const Icon(Icons.visibility))
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    isObsureTextCardNumber =
                                        !isObsureTextCardNumber;
                                  });
                                },
                                icon: const Icon(Icons.visibility_off_rounded),
                              );
  }
}
