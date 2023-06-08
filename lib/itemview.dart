import 'package:flutter/material.dart';

class Grapes extends StatefulWidget {
  final String name;
  final String image;
  final String price;

  const Grapes(
      {Key? key, required this.name, required this.image, required this.price})
      : super(key: key);

  @override
  State<Grapes> createState() => _GrapesState();
}

class _GrapesState extends State<Grapes> {
  List list = [
    "fiber",
    "Potassium",
    "Iron",
    "Magnesium",
    "Vitamin C",
    "Vitamin K",
    "Zinc",
    "Phosphorous"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Color(0xff4CA300),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Details",
                    style: TextStyle(
                        fontSize: 19,
                        fontFamily: "poppins",
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 180,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.name,
                  style: TextStyle(
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 22),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Grapes will provide natural nutrients. The  Chemical\n"
                    "in organic grapes which can be healthier hair and\n"
                    "skin. It can be improve Your heart health. Protect your\n"
                    "body from Cancer.",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Nutrition",
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Column(
              children: List.generate(
                list.length,
                (index) => Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      list[index],
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\u{20B9}${widget.price}",
                  style: TextStyle(
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                Container(
                  height: 35,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Color(0xff769E49),
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(
                    child: Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
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
