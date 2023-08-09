import 'package:expensy/data/user_info.dart';
import 'package:expensy/utils/constants.dart';
import 'package:expensy/widgets/income_expense_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/transaction_item_tile.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultSpacing,horizontal: defaultSpacing / 2,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: defaultSpacing / 2,
            ),
            ListTile(
              title: Text("Hey, ${userdata.name}!",style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: fontHeading,fontWeight: FontWeight.w500,
              ),),
              leading: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(defaultRadius),
                ),
                child: SvgPicture.asset("assets/icons/plus.svg",height: 30,),
              ),
              trailing: SvgPicture.asset(
                "assets/icons/info-circle.svg",
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: defaultSpacing,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    userdata.totalBalance,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                      color: fontDark,
                        ),
                  ),
                  const SizedBox(
                    height: defaultSpacing / 2,
                  ),
                  Text(
                    "Total Balance",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: fontSubHeading,fontWeight: FontWeight.w600,fontSize:17,),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: defaultSpacing * 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: IncomeExpenseCard(
                  expenseData: ExpenseData(
                    label: "Income",
                    amount: userdata.inflow,
                    icon: Icons.arrow_upward_rounded,
                  ),
                )),
                const SizedBox(
                  width: defaultSpacing,
                ),
                Expanded(
                    child: IncomeExpenseCard(
                  expenseData: ExpenseData(
                    label: "Expense",
                    amount: userdata.outflow,
                    icon: Icons.arrow_downward_rounded,
                  ),
                )),
              ],
            ),
            const SizedBox(
              height: defaultSpacing,
            ),
            Text(
              "Recent Transactions",
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w600,color:fontDark,
                  ),
            ),
            const SizedBox(
              height: defaultSpacing / 2,
            ),
            const Text(
              "Today",
              style: TextStyle(
                color: fontSubHeading,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),

            ...userdata.transactions.map((transaction) => TransactionItemTile(
              transaction: transaction,
            )),
            const SizedBox(
              height: defaultSpacing / 2,
            ),
            const Text(
              "Yesterday",
              style: TextStyle(
                color: fontSubHeading,
              ),
            ),

            ...userdata.transactions2.map((transaction) => TransactionItemTile(
              transaction: transaction,
            )),
          ],
        ),
      ),
    );
  }
}
