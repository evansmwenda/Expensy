enum TransactionType { inflow, outflow }

enum ItemCategoryType {
  fashion,
  grocery,
  rent,
  kplc,
}

class UserInfo {
  final String name;
  final String totalBalance;
  final String inflow;
  final String outflow;
  final List<Transaction> transactions;
  final List<Transaction> transactions2;

  UserInfo(
      {required this.name,
      required this.totalBalance,
      required this.inflow,
      required this.outflow,
      required this.transactions,
      required this.transactions2,
      });
}

class Transaction {
  final ItemCategoryType categoryType;
  final TransactionType transactionType;
  final String itemCategoryName;
  final String itemName;
  final String amount;
  final String date;

  Transaction(
      {required this.categoryType,
      required this.transactionType,
      required this.itemCategoryName,
      required this.itemName,
      required this.amount,
      required this.date});
}

List<Transaction> transactions = [
  Transaction(
    amount: "20.00",
    categoryType: ItemCategoryType.grocery,
    transactionType: TransactionType.outflow,
    itemCategoryName: "Groceries",
    itemName: "Kales",
    date: "21-04-2023",
  ),
  Transaction(
    categoryType: ItemCategoryType.fashion,
    amount: "200",
    itemCategoryName: "shoes",
    itemName: "Puma Sneaker",
    transactionType: TransactionType.inflow,
    date: "Oct, 22",
  ),
  // Transaction(
  //   categoryType: ItemCategoryType.grocery,
  //   amount: "500",
  //   itemCategoryName: "fruits",
  //   itemName: "Uji Power",
  //   transactionType: TransactionType.inflow,
  //   date: "Mar, 02",
  // ),
  // Transaction(
  //   categoryType: ItemCategoryType.rent,
  //   amount: "2200",
  //   itemCategoryName: "rent",
  //   itemName: "House Rent",
  //   transactionType: TransactionType.inflow,
  //   date: "Feb, 12",
  // ),
  // Transaction(
  //   categoryType: ItemCategoryType.kplc,
  //   amount: "1200",
  //   itemCategoryName: "prepaid",
  //   itemName: "KPLC Token",
  //   transactionType: TransactionType.inflow,
  //   date: "Jun, 29",
  // ),
];

List<Transaction> transactions2 = [


  Transaction(
    categoryType: ItemCategoryType.grocery,
    amount: "500",
    itemCategoryName: "fruits",
    itemName: "Uji Power",
    transactionType: TransactionType.inflow,
    date: "Mar, 02",
  ),
  Transaction(
    categoryType: ItemCategoryType.rent,
    amount: "2200",
    itemCategoryName: "rent",
    itemName: "House Rent",
    transactionType: TransactionType.inflow,
    date: "Feb, 12",
  ),
  Transaction(
    categoryType: ItemCategoryType.kplc,
    amount: "1200",
    itemCategoryName: "prepaid",
    itemName: "KPLC Token",
    transactionType: TransactionType.inflow,
    date: "Jun, 29",
  ),
];

final userdata = UserInfo(
    name: "Morris",
    totalBalance: "KES 4,500",
    inflow: "400",
    outflow: "500",
    transactions: transactions,
    transactions2: transactions2,
);
