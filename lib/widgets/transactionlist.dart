import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      child: SingleChildScrollView(
        child: Column(
          children: transactions
              .map((tx) => Card(
                    //child: Text(tx.title),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                          padding: EdgeInsets.all(16),
                          child: Text(
                            '\$${tx.amount}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.deepPurple),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${tx.title}',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              //DateFormat().format(tx.date),
                              DateFormat().add_yMd().add_jm().format(tx.date),
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
