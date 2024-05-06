import 'package:flutter/material.dart';
import 'package:ui_design/config/data.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Text(
            "Sirisha's Account",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              boxShadow: customShadow,
              color: primaryColor,
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: customShadow,
                        color: Colors.deepOrange,
                        shape: BoxShape.circle),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        boxShadow: customShadow,
                        color: primaryColor,
                        shape: BoxShape.circle),
                  ),
                ),
                const Center(child: Icon(Icons.notifications, size: 30)),
              ],
            ),
          ),
          const SizedBox(
            // width: 30,
            width: 25,
          ),
        ],
      ),
    );
  }
}
