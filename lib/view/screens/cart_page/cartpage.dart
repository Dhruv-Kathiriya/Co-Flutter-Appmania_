import 'package:app_ui/utlis/products/products.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double total = 0;
  double totalDis = 0;

  void sumAllProduct() {
    total = 0;
    cartList.forEach((e) {
      double discount = e['price'] * e['discountPercentage'] / 100;
      totalDis += discount;
      total += (e['price'] - discount) * e['qty'];
    });
  }

  void subAllProduct() {
    total = 0;
    cartList.forEach((e) {
      double discount = e['price'] * e['discountPercentage'] / 100;
      totalDis -= discount;
      total += (e['price'] - discount) * e['qty'];
    });
  }

  @override
  void initState() {
    super.initState();
    sumAllProduct();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    TextScaler textScaler = MediaQuery.of(context).textScaler;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Cart Page",
          style: TextStyle(
            fontSize: textScaler.scale(18),
          ),
        ),
        backgroundColor: Colors.grey.shade300,
      ),
      body: (cartList.isNotEmpty)
          ? Stack(
              children: [
                Column(
                  children: [
                    ...cartList.map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          height: h * 0.15,
                          width: w,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Container(
                                  height: h * 0.13,
                                  width: w * 0.25,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        e['thumbnail'],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 12),
                                        child: Text(
                                          e['title'],
                                          style: TextStyle(
                                            fontSize: textScaler.scale(22),
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: h * 0.01,
                                      ),
                                      Text(
                                        "⭐ ${e['rating']}".toString(),
                                        style: TextStyle(
                                          fontSize: textScaler.scale(20),
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: h * 0.01,
                                      ),
                                      Text(
                                        " \$ ${e['price']}".toString(),
                                        style: TextStyle(
                                          fontSize: textScaler.scale(18),
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  if (e['qty'] > 1) {
                                    e['qty']--;
                                  } else {
                                    cartList.remove(e);
                                  }
                                  subAllProduct();
                                  setState(() {});
                                },
                                child: Container(
                                  height: h * 0.04,
                                  width: w * 0.095,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffededed),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Icon(Icons.remove),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.02,
                              ),
                              Text(
                                "${e['qty']}",
                                style: TextStyle(
                                  fontSize: textScaler.scale(18),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: w * 0.02,
                              ),
                              GestureDetector(
                                onTap: () {
                                  if (e['stock'] > e['qty']) {
                                    e['qty']++;
                                  }
                                  sumAllProduct();
                                  setState(() {});
                                },
                                child: Container(
                                  height: h * 0.04,
                                  width: w * 0.095,
                                  decoration: BoxDecoration(
                                    color: Colors.brown,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),

                              /*GestureDetector(
                                  onTap: () {
                                    cartList.remove(e);
                                    setState(() {});
                                  },*/
                              /*  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Icon(Icons.delete),
                                  ),),*/
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: h * 0.25,
                    width: w,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Discount",
                                style: TextStyle(
                                  fontSize: textScaler.scale(20),
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "\$ ${totalDis.toString().split('.')[0]}.${totalDis.toString().split('.')[1][0]}${totalDis.toString().split('.')[1][1]}",
                                style: TextStyle(
                                  fontSize: textScaler.scale(20),
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Cost",
                                style: TextStyle(
                                  fontSize: textScaler.scale(20),
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "\$ ${total.toString().split('.')[0]}.${total.toString().split('.')[1][0]}${total.toString().split('.')[1][1]}",
                                style: TextStyle(
                                  fontSize: textScaler.scale(20),
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          : Center(
              child: Image.network(
                "https://assets-v2.lottiefiles.com/a/435a7e80-1153-11ee-a46f-7f1c0e4a511a/ePxvZATa5E.gif",
                height: h * 0.25,
              ),
            ),
    );
  }
}
