import 'dart:developer';

import 'package:app_ui/utlis/products/products.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailsPage> {
  bool isLike = false;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> pro =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: h * 0.5,
                  width: w,
                  color: Colors.white,
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.arrow_back),
                            ),
                          ),
                          Text(
                            "Product Details",
                            style: TextStyle(
                              fontSize: textScaler.scale(22),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (!favList.contains(pro)) {
                                favList.add(pro);
                              }

                              log("Fav : $favList");

                              isLike = !isLike;
                              setState(() {});
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: (isLike)
                                  ? const Icon(
                                      Icons.favorite,
                                      color: Colors.brown,
                                    )
                                  : const Icon(Icons.favorite_border),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: h * 0.40,
                            width: w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(pro['thumbnail']),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pro['title'],
                        style: TextStyle(
                          fontSize: textScaler.scale(20),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Divider(),
                      Text(
                        "Product Details  :-  ",
                        style: TextStyle(
                          fontSize: textScaler.scale(20),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.005,
                      ),
                      Text(
                        pro['description'],
                        style: TextStyle(
                          fontSize: textScaler.scale(10),
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      const Divider(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    "Colors",
                    style: TextStyle(fontSize: textScaler.scale(15)),
                  ),
                ),
                SizedBox(
                  height: h * 0.005,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: CircleAvatar(
                        backgroundColor: Colors.purple,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Rating :   ⭐ ${pro['rating']}".toString(),
                    style: TextStyle(
                      fontSize: textScaler.scale(20),
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.005,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Brand :    ${pro['brand']}".toString(),
                    style: TextStyle(
                      fontSize: textScaler.scale(20),
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: h * 0.15,
                width: w,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      "Price   :   ${pro['price']}".toString(),
                      style: TextStyle(
                        fontSize: textScaler.scale(20),
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: w * 0.09,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          if (!cartList.contains(pro)) {
                            cartList.add(pro);
                          }

                          log("Cart : $cartList");
                        },
                        child: Container(
                          height: h * 0.07,
                          width: w,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(30),
                            /*boxShadow: [
                          BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 20.2,
                          ),
                        ],*/
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "🛒 Add Item  ",
                                style: TextStyle(
                                    fontSize: textScaler.scale(20),
                                    color: Colors.white),
                              ),
                              /*  Text(
                                  "|",
                                  style: TextStyle(
                                    fontSize: textScaler.scale(50),
                                    color: Colors.white,
                                  ),
                          )*/
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
