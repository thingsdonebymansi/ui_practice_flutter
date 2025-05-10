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
                width: 380,
                height: 380,
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
                    tooglePopular? columnPopular(): columnBasic(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                              ),

                            )
                        ),
                      ),
                    )

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
                backgroundColor: toogleBasic? Colors.deepPurple: Colors.white,
                elevation: 0,
              ),
              onPressed: (){
                setState(() {
                  tooglePopular = false;
                  toogleBasic = true;
                });
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
                backgroundColor: tooglePopular? Colors.deepPurple: Colors.white,
                elevation: 0,
              ),
              onPressed: (){
                setState(() {
                  tooglePopular = true;
                  toogleBasic = false;
                });
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

  Widget columnPopular(){
    return SizedBox( // I wrapped it in SizedBox because the length of basic and popular columns
      // is different which was making the "Get Started" Elevated Button move when toggling
      // between basic and popular plans.
      height: 255,
      child: Padding(
        padding: const EdgeInsets.only(left: 40, top: 30,),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "15\$",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5), // to align the '15$' string and the '/month' string
                  child: Text(
                    "/Month",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                "Ideal for freelancers or solo makers looking to kick off their creative work with confidence.",
                style: TextStyle(
                  fontSize: 13
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(
                  Icons.check,
                  color: Colors.green.shade600,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Full access to core tools"
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check,
                  color: Colors.green.shade600,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                    "Up to 3 Projects"
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check,
                  color: Colors.green.shade600,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                    "Solo Use Only"
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check,
                  color: Colors.green.shade600,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                    "Chat Support"
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check,
                  color: Colors.green.shade600,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                    "Cancel anytime"
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget columnBasic(){
    return SizedBox(
      height: 255,
      child: Padding(
        padding: const EdgeInsets.only(left: 40, top: 30,),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "0\$",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5), // to align the '15$' string and the '/month' string
                  child: Text(
                    "/Month",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                "Ideal for freelancers or solo makers looking to kick off their creative work with confidence.",
                style: TextStyle(
                    fontSize: 13
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(
                  Icons.check,
                  color: Colors.green.shade600,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                    "Partial access to core tools"
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check,
                  color: Colors.green.shade600,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                    "Up to 1 Projects"
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.close,
                  color: Colors.red.shade600,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                    "No solo Use"
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.close,
                  color: Colors.red.shade600,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                    "No Chat Support"
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

}


