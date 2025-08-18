import 'package:ecommerce_mobile_app_design/widgets/rating_bar.dart';
import 'package:flutter/material.dart';

class FreelancerInfo extends StatelessWidget {
  final String img;
  final String name;
  final String job;
  final double rate;

  const FreelancerInfo({
    super.key,
    required this.name,
    required this.job,
    required this.img,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(radius: 40, backgroundImage: NetworkImage(img)),
        SizedBox(height: 5),
        Text(name, style: TextStyle(color: Colors.grey.shade600)),
        Text(job, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        RatingBar(rate: rate),
      ],
    );
  }
}
