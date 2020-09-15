import 'package:flutter/material.dart';

import './new_transactions.dart';
import './transactionlist.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(id: 't1', title: 'Laptops', amount: 75, date: DateTime.now()),
    Transaction(id: 't2', title: 'Charger', amount: 25, date: DateTime.now())
  ];

  void _addNewTransaction(String txtTitle, double txtAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txtTitle,
        amount: txtAmount,
        date: DateTime.now());

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [NewTransaction(_addNewTransaction), TransactionList(_userTransaction)],
    );
  }
}
