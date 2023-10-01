import 'package:expensy/utils/constants.dart';
import 'package:flutter/material.dart';

import '../data/user_info.dart';
import '../widgets/transaction_item_tile.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({Key? key}) : super(key: key);

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.red,
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.green,
            child: Text("graph here"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("All"),
                Text("Food"),
                Text("Shopping"),
                Text("Transport"),
              ],
            ),
          ),
          const SizedBox(
            height: defaultSpacing,
          ),
          ...userdata.transactions.map((transaction) => TransactionItemTile(
            transaction: transaction,
          )),
          ...userdata.transactions.map((transaction) => TransactionItemTile(
            transaction: transaction,
          )),
        ],
      ),
    );
  }
}
