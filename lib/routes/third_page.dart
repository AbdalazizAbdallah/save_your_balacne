import 'package:flutter/material.dart';
import 'package:save_your_balance/widgets/appbar.dart';

import '../model/source_data.dart';
import '../widgets/card_type.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(mainWord: 'Super Card'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: ListView.separated(
              itemCount: SourceData.listOfCardClass.length,
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, int index) {
                return CardType(
                  cardclass: SourceData.listOfCardClass[index],
                  myColor:
                      index % 2 == 0 ? Color(0xff1d2025) : Color(0xFFf0b18e),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 20,
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 40),
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(double.infinity, 60),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Add Card'),
            ),
          ),
        ],
      ),
    );
  }
}
