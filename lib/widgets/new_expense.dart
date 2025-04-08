import 'package:flutter/material.dart';
import '../expenses.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _titleController,
                  maxLength: 50,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    label: Text('Title'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  maxLength: 50,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    prefixText: "\$",
                    label: Text('Amount'),

                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print("Title: ${_titleController.text}");
                  print("Amount: ${_amountController.text}");
                  
                },
                child: Text('Save Expense'),
              ),
              ElevatedButton(
                onPressed: () {
                  dispose();
                  
                },
                child: Text('Close'),
              )
            ],
          ),
        ],
      ),
    );
  }
}