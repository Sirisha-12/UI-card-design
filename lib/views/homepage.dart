import 'package:flutter/material.dart';
import 'package:ui_design/config/data.dart';
import 'package:ui_design/widgets/card.dart';
import 'package:ui_design/widgets/expenses.dart';
import 'package:ui_design/widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 120,
            child: const WalletHeader(),
          ),
          const Expanded(
            child: CardDetails(),
          ),
          const Expanded(child: Expenses())
        ],
      ),
    );
  }
}
