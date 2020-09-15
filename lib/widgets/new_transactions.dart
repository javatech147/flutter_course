import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter title',
              ),
              //onChanged: (val) => titleInput = val,
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Enter amount'),
              //onChanged: (val) => amountInput = val,
              controller: amountController,
            ),
            FlatButton(
              onPressed: () {
                addNewTransaction(
                    titleController.text, double.parse(amountController.text));
              },
              child: Text('Add Transaction'),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
