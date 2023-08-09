import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                    radius: 28,
                    child: ClipOval(
                      child: Image.asset(
                        "assets/home/img.png",
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    )),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Diver to",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Times Square",
                      style: TextStyle(color: Colors.black, fontSize: 21),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(color: Colors.black, width: 1)),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 26,
                      child:
                          Icon(Icons.add_alert_outlined, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(color: Colors.black, width: 1)),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 26,
                      child: Icon(Icons.shop, color: Colors.black),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
                left: 8.0,
                top: 30,
              ),
              child: TextField(
                decoration: InputDecoration(
                    focusColor: Colors.green,
                    prefixIcon: Icon(Icons.search),
                    hintText: "What are you craving?",
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special Offers",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(color: Colors.green, fontSize: 22),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.green[400]),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "30%",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "DISCOUNT ONLY",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "VALID FOR TODAY!",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Image(
                    image: AssetImage("assets/home/img_1.png"),
                  ))
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                            child: Image.asset("assets/home/img_2.png"),
                            width: 60,
                            height: 70),
                        Text("Hambur..",style: TextStyle(fontSize: 16),)
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                            child: Image.asset("assets/home/img_3.png"),
                            width: 60,
                            height: 70),
                        Text("Pizza",style: TextStyle(fontSize: 16),)
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                            child: Image.asset("assets/home/img_4.png"),
                            width: 60,
                            height: 70),
                        Text("Noodles",style: TextStyle(fontSize: 16),)
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                            child: Image.asset("assets/home/img_5.png"),
                            width: 60,
                            height: 70),
                        Text("Meat",style: TextStyle(fontSize: 16),)
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                            child: Image.asset("assets/home/img_6.png"),
                            width: 60,
                            height: 70),
                        Text("Vegeta..",style: TextStyle(fontSize: 16),)
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                            child: Image.asset("assets/home/img_7.png"),
                            width: 60,
                            height: 70),
                        Text("Disert",style: TextStyle(fontSize: 16),)
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                            child: Image.asset("assets/home/img_8.png"),
                            width: 60,
                            height: 70),
                        Text("Drink",style: TextStyle(fontSize: 16),)
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                            child: Image.asset("assets/home/img_9.png"),
                            width: 60,
                            height: 70),
                        Text("More",style: TextStyle(fontSize: 16),)
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
