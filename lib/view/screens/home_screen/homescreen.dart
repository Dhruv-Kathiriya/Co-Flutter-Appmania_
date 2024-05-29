import 'dart:developer';

import 'package:app_ui/Componets/produts/products.dart';
import 'package:flutter/material.dart';

import '../../../Componets/catgory.dart';
import '../../../Componets/produts/sub_cat.dart';
import '../../../globals/routs.dart';
import '../../../utlis/products/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String cat = "All";
  @override
  void initState() {
    super.initState();
    category.insert(0, "All");
  }

  @override
  Widget build(BuildContext context) {
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    Size size = MediaQuery.sizeOf(context);
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.yellow,
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/150034575?v=4"),
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning👋🏻",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Andrew Ainsely",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.notifications,
                          size: 30,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Column(
                  children: [
                    Container(
                      height: 45,
                      width: 450,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Colors.grey.shade400, width: 3),
                      ),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(Icons.search),
                          ),
                          Text(
                            "   Search",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 245),
                            child: Icon(Icons.menu_rounded),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Text(
                      "Special Offers ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      "See All ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 195,
                  width: 425,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 25, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 75),
                              child: Text(
                                "30%",
                                style: TextStyle(
                                    fontSize: 45, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text(
                                "Today's Special",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "  Get discount for every \n   order,only valid for today ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    ...subCategory.map(
                      (e) => mySubCategory(
                        context: context,
                        image: e['image'],
                        text: e['text'],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    ...subCategory1.map(
                      (e) => mySubCategory(
                        context: context,
                        image: e['image'],
                        text: e['text'],
                      ),
                    )
                  ],
                ),

                // category
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...category.map(
                        (e) => myCategory(
                          category: e,
                          textScale: textScaler,
                          setState: () {
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                const Row(
                  children: [
                    Text(
                      "Most popular",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    Text(
                      "See All ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      ...category.map(
                        (e) => Column(
                          children: [
                            MyPro(context: context, Catgory: e),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          width: w,
          height: h * 0.08,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: const Color(0xff1f2029),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: w * 0.08,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.home_filled,
                  size: h * 0.04,
                  color: Colors.brown,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.cartPage);
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.grey,
                  size: h * 0.04,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.favPage);
                },
                child: Icon(
                  Icons.favorite_outline_rounded,
                  color: Colors.grey,
                  size: h * 0.04,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.chat_bubble_outline,
                color: Colors.grey,
                size: h * 0.04,
              ),
              const Spacer(),
              Icon(
                Icons.person_2_outlined,
                color: Colors.grey,
                size: h * 0.04,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
