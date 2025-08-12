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
            Container(
              margin: EdgeInsets.only(top: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    width: MediaQuery.of(context).size.width * 4 / 5,
                    height: 51,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/search.png"),
                        SizedBox(width: 20),
                        Text("Search here"),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    height: 51,
                    width: 51,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/sort.png"),
                      ),
                    ),
                  ),
                ],
              ),
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
            Container(
              height: 38,
              margin: EdgeInsets.only(top: 21),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffCBDAEE), Color(0x009CB9DD)],
                ),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Rated Freelances",
                      style: TextStyle(
                        fontFamily: 'Hind',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        fontFamily: 'Hind',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color.fromARGB(255, 138, 151, 197),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image(image: AssetImage("assets/img1.png")),
                        Transform.translate(
                          offset: Offset(0, -10),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Text(
                                  "Wade Warren",
                                  style: TextStyle(
                                    fontFamily: 'Hind',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Beautician",
                                  style: TextStyle(
                                    fontFamily: 'Hind',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(
                                        130,
                                        123,
                                        235,
                                        0.08,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Row(
                                      children: [
                                        Image(
                                          image: AssetImage("assets/star.png"),
                                        ),
                                        Text("4.9"),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(image: AssetImage("assets/img2.png")),
                        Transform.translate(
                          offset: Offset(0, -10),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Text(
                                  "Wade Warren",
                                  style: TextStyle(
                                    fontFamily: 'Hind',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Beautician",
                                  style: TextStyle(
                                    fontFamily: 'Hind',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(
                                        130,
                                        123,
                                        235,
                                        0.08,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Row(
                                      children: [
                                        Image(
                                          image: AssetImage("assets/star.png"),
                                        ),
                                        Text("4.9"),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(image: AssetImage("assets/img3.png")),
                        Transform.translate(
                          offset: Offset(0, -10),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Text(
                                  "Wade Warren",
                                  style: TextStyle(
                                    fontFamily: 'Hind',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Beautician",
                                  style: TextStyle(
                                    fontFamily: 'Hind',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(
                                        130,
                                        123,
                                        235,
                                        0.08,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Row(
                                      children: [
                                        Image(
                                          image: AssetImage("assets/star.png"),
                                        ),
                                        Text("4.9"),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(image: AssetImage("assets/img4.png")),
                        Transform.translate(
                          offset: Offset(0, -10),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Text(
                                  "Wade Warren",
                                  style: TextStyle(
                                    fontFamily: 'Hind',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Beautician",
                                  style: TextStyle(
                                    fontFamily: 'Hind',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(
                                        130,
                                        123,
                                        235,
                                        0.08,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Row(
                                      children: [
                                        Image(
                                          image: AssetImage("assets/star.png"),
                                        ),
                                        Text("4.9"),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
