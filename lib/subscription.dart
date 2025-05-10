import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {

  bool toogleBasic = false;
  bool tooglePopular = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: Offset(5, 5)

                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 30),
                      child: basicPopularToggle(),
                    ),

                  ],


                ),
        ),
      ),
    );
  }

  Widget basicPopularToggle(){
    return Row(
      children: [
        SizedBox(
          height: 30,
          width: 100,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: toogleBasic? Colors.purple.shade300: Colors.white,
              ),
              onPressed: (){
                toogleBasic = true;
              },
              child: Text(
                "Basic",
                style: TextStyle(
                  fontSize: 14,
                  color: toogleBasic? Colors.white: Colors.black,
                ),
              )
          ),
        ),
        SizedBox(
          height: 30,
          width: 100,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: tooglePopular? Colors.purple.shade300: Colors.white,
              ),
              onPressed: (){
                tooglePopular = true;
              },
              child: Text(
                "Popular",
                style: TextStyle(
                  fontSize: 14,
                  color: tooglePopular? Colors.white: Colors.black,
                ),
              )
          ),
        )
      ],
    );
  }
}


