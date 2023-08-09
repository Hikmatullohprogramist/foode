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
            CircleAvatar(radius: 28),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Diver to",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Times Square",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                ],
              ),
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
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "30%",
                        style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "DISCOUNT ONLY",
                        style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "VALID FOR TODAY!",
                        style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
