import 'package:flutter/material.dart';
import 'package:save_your_balance/routes.dart';
import 'package:save_your_balance/routes/add_card.dart';
import 'package:save_your_balance/widgets/appbar.dart';

import '../model/source_data.dart';
import '../widgets/card_type.dart';

class SuperCardPage extends StatefulWidget {
  const SuperCardPage({Key? key}) : super(key: key);

  @override
  State<SuperCardPage> createState() => _SuperCardPageState();
}

class _SuperCardPageState extends State<SuperCardPage> {
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
                  myColor: SourceData.listOfCardClass[index].myColor,
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
              onPressed: () {
                Navigator.pushNamed(context, RouteGenerator.addCardPage);
              },
              icon: const Icon(Icons.add),
              label: const Text('Add Card'),
            ),
          ),
        ],
      ),
    );
  }
}
