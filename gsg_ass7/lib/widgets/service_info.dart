import 'package:ecommerce_mobile_app_design/widgets/rating_bar.dart';
import 'package:flutter/material.dart';

class ServiceInfo extends StatelessWidget {
  final String name;
  final String job;
  final String desc;
  final double rate;
  final String img;

  const ServiceInfo({
    super.key,
    required this.name,
    required this.job,
    required this.desc,
    required this.rate,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.centerRight,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 165,
            width: 209,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            right: -230,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.8),
                    offset: Offset(4, 4),
                    blurRadius: 16,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        radius: 38,
                        backgroundImage: NetworkImage(img),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          job,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 172, 145, 245),
                          ),
                        ),
                        Text(
                          desc,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            RatingBar(rate: rate),
                            SizedBox(width: 10),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(130, 123, 235, 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                "Book Now",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
