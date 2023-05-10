import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 21.22,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 26.22,
        date: DateTime.now(),
        category: Category.leisure),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expense Tracker'),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
        ),
        body: Column(
          children: [
            const Text('Chart'),
            // we are rendering a list inside a column that's why used expanded here
            Expanded(child: ExpensesList(expenses: _registeredExpenses))
          ],
        ));
  }
}
