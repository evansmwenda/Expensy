import 'package:expensy/utils/constants.dart';
import 'package:flutter/material.dart';

class ExpenseData{
  final String label;
  final String amount;
  final IconData icon;

  const ExpenseData({required this.label,required this.amount,required this.icon});
}
class IncomeExpenseCard extends StatelessWidget {
  final ExpenseData expenseData;
  const IncomeExpenseCard({Key? key, required this.expenseData,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(Radius.circular(defaultRadius))),
      padding: EdgeInsets.all(defaultSpacing),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(expenseData.label),
                Text("\$ ${expenseData.amount}"),
              ],
            ),
          ),
          Icon(expenseData.icon),
        ],
      ),
    );
  }
}
