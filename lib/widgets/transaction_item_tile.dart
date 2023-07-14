import 'dart:math';

import 'package:expensy/data/user_info.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';

class TransactionItemTile extends StatelessWidget {
  final Transaction transaction;
  const TransactionItemTile({
    super.key,
    required this.transaction,
  });

  String getSign(TransactionType type) {
    switch (type) {
      case TransactionType.inflow:
        return "+";
      case TransactionType.outflow:
        return "-";
      default:
        return "";
    }
  }

  Color getRandomColor(){
    return Color(Random().nextInt(0xFF000000));
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(vertical: defaultSpacing / 2),
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset.zero,
              spreadRadius: 4,
            )
          ],
          color: background,
          borderRadius: BorderRadius.all(Radius.circular(defaultRadius))),
      child: ListTile(
        title: Text(
          transaction.itemCategoryName,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: fontHeading,
                fontSize: fontSizeTitle,
                fontWeight: FontWeight.w600,
              ),
        ),
        subtitle: Text(
          transaction.itemName,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: fontSubHeading,
                fontSize: fontSizeBody,
              ),
        ),
        leading: Container(
          padding: const EdgeInsets.all(defaultSpacing / 2),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(defaultRadius / 2),
            ),
            color: getRandomColor(),
          ),
          child: transaction.categoryType == ItemCategoryType.fashion
              ? const Icon(Icons.supervised_user_circle_sharp)
              : const Icon(Icons.house),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "${getSign(transaction.transactionType)} ${transaction.amount}",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color:
                        transaction.transactionType == TransactionType.outflow
                            ? Colors.red
                            : fontHeading,
                    fontSize: fontSizeBody,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Text(
              transaction.date,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: fontSubHeading,
                    fontSize: fontSizeBody,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
