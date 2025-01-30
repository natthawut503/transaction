import 'package:account/model/transaction.dart';
import 'package:flutter/foundation.dart';

class TransactionProvider with ChangeNotifier {
  List<Transaction> transactions = [
    Transaction(title: 'KFC', amount: 500, date: DateTime(2025, 1, 3, 9, 30)),
    Transaction(title: 'Dairyqueen', amount: 100, date: DateTime(2025, 2, 8, 10, 40)),
    Transaction(title: 'Mcdonald', amount: 500, date: DateTime(2025, 3, 11, 15, 20)),
    Transaction(title: 'Swensen', amount: 350, date: DateTime(2025, 4, 12, 18, 10)),
    Transaction(title: 'Other', amount: 999, date: DateTime(2025, 5, 13, 21, 50)),
  ];

  List<Transaction> getTransactions() {
    return transactions;
  }

  void addTransaction(Transaction transaction) {
    transactions.add(transaction);
    notifyListeners(); 
  }
}
