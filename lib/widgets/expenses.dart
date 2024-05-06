import 'package:flutter/material.dart';
import 'package:ui_design/config/data.dart';
import 'package:ui_design/widgets/pie_chart.dart';

class Expenses extends StatelessWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Text(
            'Expenses',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: expense
                      .map(
                        (value) => Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor:
                                    pieColors[expense.indexOf(value)],
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                value['name'],
                                style: const TextStyle(fontSize: 17),
                              )
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(flex: 5, child: PieChart())
          ],
        )
      ],
    );
  }
}
