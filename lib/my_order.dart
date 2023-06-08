import 'package:flutter/material.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  List<Map<String, dynamic>> list = [
    {"image": "assets/images/broccoli.png", "name": "Broccoli"},
    {"image": "assets/images/Onions.png", "name": "Onion"},
    {"image": "assets/images/anjeer.png", "name": "Anjeer"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Color(0xff69A03A),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "My Orders",
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: "poppins",
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: List.generate(
                list.length,
                (index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      list[index]["image"],
                      height: 90,
                      width: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list[index]["name"],
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star,
                                      size: 14,
                                      color: Color(0xffA6A1A1),
                                    )),
                          ),
                          Text(
                            "Rate the Product",
                            style: TextStyle(
                                fontFamily: "poppins", color: Colors.grey),
                          ),
                          Text(
                            "Deliverd on 24 feb 2022",
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.navigate_next,
                      size: 29,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
