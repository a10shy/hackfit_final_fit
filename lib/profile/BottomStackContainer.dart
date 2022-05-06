import 'package:flutter/material.dart';

class BottomStackContainer extends StatelessWidget {
  const BottomStackContainer({
    required this.title,
    required this.price,
  });

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            ContainerStackItem(title: title, price: price),
            BottomCart(),
          ],
        ),
      ),
    );
  }
}

class BottomCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 50,
            width: 50,
            child: const Icon(Icons.favorite_border),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), shape: BoxShape.circle),
          ),
          // FlatButton.icon(
          //   onPressed: () {},
          //   icon: const Icon(Icons.shopping_bag_outlined, color: Colors.white),
          //   label: const Text(
          //     "Add to Basket",
          //     style: TextStyle(
          //         color: Colors.white, fontSize: 20, letterSpacing: 1),
          //   ),
          //   color: const Color(0xff121421),
          //   shape: const StadiumBorder(),
          //   padding: EdgeInsets.symmetric(
          //       horizontal: MediaQuery.of(context).size.width / 6,
          //       vertical: 10),
          // )
        ],
      ),
    );
  }
}

class ContainerStackItem extends StatelessWidget {
  const ContainerStackItem({
    required this.title,
    required this.price,
  });

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              " Protein Jar",
              textScaleFactor: 1.7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),
                const Text("Rs.200",
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Weight"),
                      SizedBox(
                        height: 5,
                      ),
                      Text("250g",
                          style: TextStyle(
                            fontSize: 22,
                          )),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Quantity"),
                      SizedBox(
                        height: 5,
                      ),
                      Text("1",
                          style: TextStyle(
                            fontSize: 22,
                          )),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 1.5,
            ),
            ListTile(
              leading: const Text(
                "Details",
                style: TextStyle(fontSize: 18),
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            const Divider(
              thickness: 1.5,
            ),
            ListTile(
              leading: const Text(
                "Shipping & Returns",
                style: TextStyle(fontSize: 18),
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            const Divider(
              thickness: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
