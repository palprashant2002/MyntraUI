import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 9, 17),
      appBar: AppBar(
        leading: Image(image: AssetImage("assets/images/logo.png")),
        backgroundColor: Colors.white,
        title: Text('Myntra'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.work_outline_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.width / 0.9,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage("assets/images/ban1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              alignment: Alignment.bottomLeft,
              width: double.infinity,
              color: Color.fromARGB(255, 0, 9, 17),
              child: Text(
                "Become An Insider!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.amber),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              alignment: Alignment.bottomLeft,
              width: double.infinity,
              color: Color.fromARGB(255, 0, 9, 17),
              child: Text(
                "Join the Insider programme and earn Supercoins with every purchase and much more. Log in now!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white70),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "New Goal Criteria",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 7, 41, 69),
                  borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
              height: 100,
              width: 340,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.verified,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "₹0",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "You've Spent",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          "₹7000",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Goal",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ]),
                  SizedBox(
                    height: 3,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.white30,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.verified,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "0/5",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "Your Orders",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          "5",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "Goal",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ])
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Note: Recent purchases will only reflect in the goal once the return window is over",
                  style: TextStyle(color: Colors.white38, fontSize: 15),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              alignment: Alignment.bottomLeft,
              width: double.infinity,
              color: Color.fromARGB(255, 0, 9, 17),
              child: Text(
                "Benefits Of Joining The Program",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.amber),
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.access_time_filled_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Early Access to The Sales",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Divider(
                  height: 3,
                  color: Colors.white30,
                ),
                ListTile(
                  leading: Icon(
                    Icons.adb_sharp,
                    size: 40,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Insider Exclusive Rewards &amp; Benefits",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Divider(
                  height: 3,
                  color: Colors.white30,
                ),
                ListTile(
                  leading: Icon(
                    Icons.call,
                    size: 40,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Priority Customer Support",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 120,
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 120,
        width: double.infinity,
        color: Color.fromARGB(255, 7, 41, 69),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.pink)),
                    onPressed: () {},
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Text(
              "By enrolling you agree to",
              style: TextStyle(color: Colors.white38, fontSize: 15),
            ),
            Text(
              "Insider Terms & Conditions",
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
