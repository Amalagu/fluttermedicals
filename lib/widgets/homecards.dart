import 'package:flutter/material.dart';
import 'package:medics/models/home_card_models.dart';

// ignore: must_be_immutable
class MyHomeCard extends StatelessWidget {
  MyHomeCard({super.key, required this.index});
  int index;

  @override
  Widget build(BuildContext context) {
    final details = cardDetailsList[index];
    return Material(
      elevation: 2.0, // Add the desired elevation
      borderRadius: BorderRadius.circular(10.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          // Add onTap functionality if needed
        },
        child: Container(
          //height: 100,
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(details.icon, size: 54),
              const SizedBox(height: 8),
              Text(
                details.title,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(
                height: 1,
                color: Colors.red, // Separator line color
                margin: const EdgeInsets.symmetric(horizontal: 2),
              ),
              const SizedBox(height: 8),
              Text(
                details.desc,
                style:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              // Add other content or customize as needed
            ],
          ),
        ),
      ),
    );
  }
}
