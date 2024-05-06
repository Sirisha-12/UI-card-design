import 'package:flutter/material.dart';
import 'package:ui_design/config/data.dart';
import 'package:ui_design/widgets/card_information.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
          child: const Text(
            'Selected Card',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                boxShadow: customShadow,
                color: primaryColor,
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    top: 100,
                    bottom: -200,
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white24),
                    ),
                  ),
                  Positioned.fill(
                    left: -300,
                    top: -100,
                    bottom: -100,
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white38),
                    ),
                  ),
                  const CardInformation(),
                ],
              ),
            );
          },
        ))
      ],
    );
  }
}
