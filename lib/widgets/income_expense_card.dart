import 'package:expensy/utils/constants.dart';
import 'package:flutter/material.dart';

class ExpenseData {
  final String label;
  final String amount;
  final IconData icon;

  const ExpenseData(
      {required this.label, required this.amount, required this.icon});
}

class IncomeExpenseCard extends StatelessWidget {
  final ExpenseData expenseData;
  const IncomeExpenseCard({
    Key? key,
    required this.expenseData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            offset: Offset.zero,
            spreadRadius: 3,
          )
        ],
        color: expenseData.label == "Income" ? primaryDark : accent,
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultRadius),
        ),
      ),
      padding: const EdgeInsets.all(defaultSpacing),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  expenseData.label,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: defaultSpacing / 3),
                  child: Text(
                    expenseData.label == "Expense"  ? "- \$ ${expenseData.amount}" :
                        "\$ ${expenseData.amount}",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Icon(
            expenseData.icon,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
