import 'package:expensy/utils/constants.dart';
import 'package:expensy/widgets/income_expense_card.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(defaultSpacing),
        child: Column(
          children: [
            SizedBox(height: defaultSpacing * 4,),
            Row(mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(child: IncomeExpenseCard(
                  expenseData: ExpenseData(label: "Income", amount: "2,000", icon: Icons.arrow_upward),
                )),
                SizedBox(width: defaultSpacing,),
                Expanded(child: IncomeExpenseCard(expenseData: ExpenseData(label: "Expense", amount: "3,000", icon: Icons.arrow_downward),)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
