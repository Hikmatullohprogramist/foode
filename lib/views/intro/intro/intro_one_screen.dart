import 'package:flutter/material.dart';

class IntroOneScreen extends StatelessWidget {
  const IntroOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.asset(
              "assets/intro_one.png",
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            "Order for food",
            style: TextStyle(
              color: Colors.green,
              fontSize: 38,
              fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(
            height: 10,
          ),

          const Text(
            "dlajsldjaskjdlk ajsdlkj aklsdjlk ajsdlkj aslkdj kaljdklasj dlkajsdlk jasdlkjasdkljaslkdjklasjdlkajdsj lkasjdklasjkdl jaskl",
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w600

            ),textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
