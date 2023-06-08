import 'package:flutter/material.dart';
import 'package:fruits_app/paymentpage.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  List<Map<String, dynamic>> list = [
    {
      "name": "broccoli",
      "image": "assets/images/broccoli.png",
      "save": "Rs 40 saved",
      "ruppy": "Rs 190",
      "price": "150 per/kg",
      "isSelected": 1,
    },
    {
      "name": "Onion",
      "image": "assets/images/Onions.png",
      "save": "Rs 60 saved",
      "ruppy": "Rs 260",
      "price": "200 per/kg",
      "isSelected": 2,
    }
  ];
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff69A03A),
        titleSpacing: 0,
        title: const Text("Shopping Cart"),
        elevation: 0,
        toolbarHeight: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.keyboard_arrow_left,
            size: 40,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: const [
                Icon(
                  Icons.location_on,
                  size: 20,
                ),
                Text(
                  " 440001  Nagpur ,Maharashtra",
                  style: TextStyle(fontFamily: "poppins"),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  size: 20,
                ),
                Spacer(),
                Text(
                  "change address",
                  style: TextStyle(
                      fontFamily: "poppins", color: Color(0xff7089F0)),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 30,
            width: double.infinity,
            color: Colors.grey.withOpacity(0.5),
            child: const Padding(
              padding: EdgeInsets.only(left: 30, top: 5),
              child: Text(
                "Vegetables",
                style: TextStyle(fontFamily: "poppins"),
              ),
            ),
          ),
          Column(
            children: List.generate(
              list.length,
              (index) => Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                list[index]["image"],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  list[index]["name"],
                                  style: const TextStyle(
                                      fontFamily: "poppins",
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  list[index]["ruppy"],
                                  style: const TextStyle(
                                      fontFamily: "poppins",
                                      decoration: TextDecoration.lineThrough),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  list[index]["price"],
                                  style: const TextStyle(
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              list[index]["save"],
                              style: const TextStyle(
                                  fontFamily: "poppins",
                                  color: Color(0xff69A03A),
                                  fontSize: 12),
                            ),
                            const Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Icon(
                                  Icons.delete_forever_outlined,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        list[index]["isSelected".toString()] =
                                            list[index]
                                                    ["isSelected".toString()] -
                                                1;
                                        setState(() {});
                                      },
                                      child: Container(
                                        height: 18,
                                        width: 18,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            border: Border.all(
                                                color: Colors.black)),
                                        child: const Icon(
                                          Icons.remove,
                                          size: 12,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(list[index]["isSelected"].toString()),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        list[index]["isSelected".toString()] =
                                            list[index]
                                                    ["isSelected".toString()] +
                                                1;
                                        setState(() {});
                                      },
                                      child: Container(
                                        height: 18,
                                        width: 18,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            border: Border.all(
                                                color: Colors.black)),
                                        child: const Icon(
                                          Icons.add,
                                          size: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      height: 1,
                      color: Colors.black45,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          Container(
            height: 30,
            width: double.infinity,
            color: Colors.grey.withOpacity(0.5),
            child: const Padding(
              padding: EdgeInsets.only(left: 30, top: 5),
              child: Text(
                "Dry Fruits",
                style: TextStyle(fontFamily: "poppins"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/anjeer.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Anjeer",
                        style: TextStyle(
                            fontFamily: "poppins", fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Rs 260",
                        style: TextStyle(
                            fontFamily: "poppins",
                            decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "220 per/kg",
                        style: TextStyle(
                            fontFamily: "poppins", fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Text(
                    "Rs 40 Saved",
                    style: TextStyle(color: Color(0xff69A03A), fontSize: 12),
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(Icons.delete_forever_outlined),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              a = a - 1;
                              setState(() {});
                            },
                            child: Container(
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(color: Colors.black)),
                              child: const Icon(
                                Icons.remove,
                                size: 12,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(a.toString()),
                          const SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              a = a + 1;
                              setState(() {});
                            },
                            child: Container(
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(color: Colors.black)),
                              child: const Icon(
                                Icons.add,
                                size: 12,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total-Rs 570",
                  style: TextStyle(
                      fontFamily: "poppins", fontWeight: FontWeight.w600),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                      color: const Color(0xff69A03A),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: const Center(
                      child: Text(
                        "Place Order",
                        style: TextStyle(
                            fontFamily: "poppins", color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
