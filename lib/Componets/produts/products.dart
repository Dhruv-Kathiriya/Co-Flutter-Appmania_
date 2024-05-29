import 'dart:developer';

import 'package:app_ui/globals/routs.dart';
import 'package:app_ui/utlis/products/products.dart';

import 'package:flutter/material.dart';

Widget MyPro({
  required BuildContext context,
  required String Catgory,
}) {
  double h = MediaQuery.sizeOf(context).height;
  double w = MediaQuery.sizeOf(context).width;
  TextScaler textScaler = MediaQuery.textScalerOf(context);
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    physics: const BouncingScrollPhysics(),
    child: Row(
      children: [
        ...products.map(
          (e) => (e['category'] == Catgory)
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      log("button is click");
                      Navigator.pushNamed(
                        context,
                        Routes.detailPage,
                        arguments: e,
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: h * 0.35,
                          width: w * 0.50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.network(e['thumbnail']),
                        ),
                        Column(
                          children: [
                            Text(
                              e['title'].toString().split(" ")[0],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "⭐ ${e['rating']}",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              "\$${e['price']}.00",
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              : Container(
                  color: Colors.black,
                ),
        ),
      ],
    ),
  );
}
