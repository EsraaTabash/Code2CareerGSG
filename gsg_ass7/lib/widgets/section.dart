import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String section_name;
  const Section({super.key, required this.section_name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(194, 215, 242, 1),
            Color.fromRGBO(255, 255, 255, 0),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            section_name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "View all",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 14,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
