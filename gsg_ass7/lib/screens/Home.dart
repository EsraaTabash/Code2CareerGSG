import 'package:ecommerce_mobile_app_design/widgets/freelancer_info.dart';
import 'package:ecommerce_mobile_app_design/widgets/rating_bar.dart';
import 'package:ecommerce_mobile_app_design/widgets/section.dart';
import 'package:ecommerce_mobile_app_design/widgets/service_info.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/menu.png", width: 44, height: 44),
        title: Image.asset("assets/logo.png", width: 134, height: 44),
        actions: [
          Image.asset("assets/bell.png", width: 44, height: 44),
          SizedBox(width: 20),
          Image.asset("assets/cart.png", width: 44, height: 44),
          SizedBox(width: 20),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 20),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.sort),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade600),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              height: 240,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0x009CB9DD), Color(0xffCBDAEE)],
                ),
              ),
              child: Row(
                children: [
                  Flexible(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 26),
                      width: MediaQuery.of(context).size.width * 2 / 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Todays Deal",
                            style: TextStyle(
                              fontFamily: 'Hind',
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              height: 1.0,
                              color: Color(0xFF4F4F4F),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "50% OFF",
                            style: TextStyle(
                              fontFamily: 'Hind',
                              fontWeight: FontWeight.w900,
                              fontSize: 30,
                              height: 1.1,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            "Et provident eos est dolore. Eum libero eligendi molestias aut et quibusdam aspernatur.",
                            style: TextStyle(
                              fontFamily: 'Hind',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 1.5,
                              color: Color(0xFF828282),
                            ),
                          ),
                          SizedBox(height: 20),
                          Image(image: AssetImage("assets/btn.png")),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Image(
                      image: AssetImage("assets/girl.png"),
                      width: MediaQuery.of(context).size.width * 1 / 3,
                    ),
                  ),
                ],
              ),
            ),
            Section(section_name: "Top Rated Freelancers"),
            SizedBox(height: 20),
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FreelancerInfo(
                    name: "Ahmed Basem",
                    job: "Doctor",
                    rate: 3.2,
                    img:
                        "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
                  ),
                  FreelancerInfo(
                    name: "ALi Jaber",
                    job: "Teacher",
                    rate: 4.2,
                    img:
                        "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
                  ),
                  FreelancerInfo(
                    name: "Alaa Qais",
                    job: "Driver",
                    rate: 5.0,
                    img:
                        "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
                  ),
                  FreelancerInfo(
                    name: "Moad Dada",
                    job: "Farmer",
                    rate: 2.3,
                    img:
                        "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
                  ),
                  FreelancerInfo(
                    name: "Moad Dada",
                    job: "Singer",
                    rate: 3.3,
                    img:
                        "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Section(section_name: "Top Service"),
            SizedBox(height: 20),
            Column(
              children: [
                ServiceInfo(
                  name: "Miss Zachary Will",
                  job: "Beautician",
                  desc: "Doloribus saepe aut necessit qui non qui.",
                  rate: 4.9,
                  img:
                      "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
                ),
                SizedBox(height: 20),
                ServiceInfo(
                  name: "Miss Zachary Will",
                  job: "Beautician",
                  desc: "Doloribus saepe aut necessit qui non qui.",
                  rate: 4.9,
                  img:
                      "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
                ),
                SizedBox(height: 20),
                ServiceInfo(
                  name: "Miss Zachary Will",
                  job: "Beautician",
                  desc: "Doloribus saepe aut necessit qui non qui.",
                  rate: 4.9,
                  img:
                      "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
                ),
                SizedBox(height: 20),
                ServiceInfo(
                  name: "Miss Zachary Will",
                  job: "Beautician",
                  desc: "Doloribus saepe aut necessit qui non qui.",
                  rate: 4.9,
                  img:
                      "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
                ),
                SizedBox(height: 20),
                ServiceInfo(
                  name: "Miss Zachary Will",
                  job: "Beautician",
                  desc: "Doloribus saepe aut necessit qui non qui.",
                  rate: 4.9,
                  img:
                      "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
