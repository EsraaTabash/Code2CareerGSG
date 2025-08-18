import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  const RatingBar({super.key, required this.rate});
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Color.fromRGBO(130, 123, 235, 0.08),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.star_rounded,
            color: const Color.fromARGB(255, 172, 145, 245),
          ),
          SizedBox(width: 5),
          Text(rate.toString(), style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
