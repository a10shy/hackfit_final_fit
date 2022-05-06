// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'DetailsPage.dart';

class MyHomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SafeArea(
            child: ListView(
      physics: const BouncingScrollPhysics(),
      children: [HeadingTopBar(), BottomBodyContainer()],
    )));
  }
}

class BottomBodyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300]!,
                spreadRadius: 1,
                blurRadius: 20,
              ),
            ]),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              HeadingText(),
              MyCandelsList(),
              const SizedBox(
                height: 20,
              ),
              LineBar(),
              BottomBodyItems(),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomBodyItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            children: const [
              Text(
                "Exclusive Offer",
                style: TextStyle(fontSize: 24),
              ),
              Spacer(),
              Text(
                "View All",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              buildbottomContainer(),
              buildbottomContainer(),
              buildbottomContainer(),
            ],
          ),
        )
      ],
    );
  }

  Container buildbottomContainer() {
    return Container(
      height: 150,
      width: 230,
      margin: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                  height: 120,
                  width: 100,
                  child: Image.asset(
                    "assets/images/candel3.jpg",
                    fit: BoxFit.cover,
                  ))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Dumbell"),
                Text(
                  "5 KG",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Spacer(),
                Text(
                  "Rs. 500",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildColumnAtTop("Proteins", isSelected: true),
            buildColumnAtTop("Dumbell"),
            buildColumnAtTop("Tshirts"),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Column buildColumnAtTop(String text, {bool isSelected = false}) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.grey,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        if (isSelected)
          Container(
            height: 5,
            width: 5,
            decoration: const BoxDecoration(
                color: Colors.black, shape: BoxShape.circle),
          )
      ],
    );
  }
}

class HeadingTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: Image.asset(
                        'assets/images/images.png',
                        scale: 14,
                      )
                          // Icon(
                          //   Icons.person,
                          //   color: Colors.white,
                          //   size: 60,
                          // ),
                          ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Antony Thomas',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Last Seen: 12.05 pm Yesterday',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 59, 66, 110),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 200,
                  width: 350,
                ),
              ],
            ),
          ),
        ]),
        Container(
          color: Colors.white54,
          child: Center(
            child: Row(
              children: const [
                Padding(padding: EdgeInsets.all(10)),
                SizedBox(
                  width: 25,
                ),
                // Text('FITCOINS EARNED : ',
                //     textScaleFactor: 1.10,
                //     style: TextStyle(
                //       color: Colors.amberAccent,
                //       fontSize: 20,
                //       fontWeight: FontWeight.bold,
                //     )),
                // Text('50',
                //     textScaleFactor: 2,
                //     style: TextStyle(
                //       color: Colors.amberAccent,
                //       fontSize: 22,
                //       fontWeight: FontWeight.bold,
                //     )),
                // Image.asset(
                //   'assets/images/coin.png',
                //   scale: 8,
                // )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 200,
          child: Center(
            child: ListView(children: <Widget>[
              CircularPercentIndicator(
                radius: 80.0,
                lineWidth: 15.0,
                animation: true,
                percent: 0.7,
                center: const Text(
                  "To Burn: 98 kcal ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                header: const Text(
                  "Target This Week",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: const Color.fromARGB(255, 96, 105, 164),
              ),
            ]),
          ),
        ),
        Row(
          children: const [
            SizedBox(
              width: 15,
            ),
            Text(
              "Recommended for ",
              style: TextStyle(fontSize: 25, letterSpacing: 1),
            ),
            Text(
              "You",
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 1),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            // buildFlatButton("Gym equipments", isSelected: true),
            // buildFlatButton("Protein & Creatin"),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  // ignore: deprecated_member_use
  // FlatButton buildFlatButton(String text, {bool isSelected = false}) {
  //   return FlatButton(
  //     onPressed: () {
  //       print("Button pressed");
  //     },
  //     child: Text(
  //       text,
  //       style: TextStyle(
  //         color: isSelected ? Colors.white : Colors.black,
  //         fontSize: 18,
  //       ),
  //     ),
  //     shape: const StadiumBorder(),
  //     color: isSelected
  //         ? const Color.fromARGB(255, 124, 132, 181)
  //         : Colors.grey[300],
  //   );
  // }
}

class MyCandelsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          buildColumnWithRow("1", "Beginner  ", "200", context),
          buildColumnWithRow("2", "Intermediate ", "400", context),
          buildColumnWithRow("3", "Dumbells ", "500", context),
        ],
      ),
    );
  }

  GestureDetector buildColumnWithRow(
      String img, String title, String price, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DetailsPage(
            title: title,
            img: img,
            context: context,
            price: price,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 220,
              width: 160,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/candel$img.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Rs. $price",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class LineBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.height);
    return Container(
      height: 5,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 40),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Container(
        height: 5,
        width: 100,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
