import 'package:flutter/material.dart';
import 'package:fruits_app/function/fruit_box_widget.dart';

class FruitsPage extends StatefulWidget {
  const FruitsPage({Key? key}) : super(key: key);

  @override
  State<FruitsPage> createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  List<Map<String, dynamic>> list = [
    {
      "name": "Strawberry",
      "price": "300 per/kg",
      "image": "assets/images/f.png",
      "isFavorite": false,
    },
    {
      "name": "Grapes",
      "price": "160 per/kg",
      "image": "assets/images/fr.png",
      "isFavorite": false,
    },
    {
      "name": "Oranges",
      "price": "120 per/kg",
      "image": "assets/images/frt.png",
      "isFavorite": false,
    },
    {
      "name": "Oranges",
      "price": "120 per/kg",
      "image": "assets/images/frt.png",
      "isFavorite": false,
    },
    {
      "name": "Oranges",
      "price": "120 per/kg",
      "image": "assets/images/frt.png",
      "isFavorite": false,
    },
  ];
  List<Map<String, dynamic>> list2 = [
    {
      "name": "Multi Fruits Pack",
      "price": "350 per/kg",
      "image": "assets/images/frtu.png",
      "isFavorite": false,
    },
    {
      "name": "Paper Fruits Pack",
      "price": "230 per/kg",
      "image": "assets/images/fr.png",
      "isFavorite": false,
    },
    {
      "name": "Tropicana",
      "price": "140 per/kg",
      "image": "assets/images/frt.png",
      "isFavorite": false,
    },
    {
      "name": "Tropicana",
      "price": "140 per/kg",
      "image": "assets/images/frt.png",
      "isFavorite": false,
    },
    {
      "name": "Tropicana",
      "price": "140 per/kg",
      "image": "assets/images/frt.png",
      "isFavorite": false,
    },
  ];
  List<Map<String, dynamic>> list3 = [
    {
      "name": "Nectarines",
      "price": "250 per/kg",
      "image": "assets/images/fr.png",
      "isFavorite": false,
    },
    {
      "name": "Apricots",
      "price": "180 per/kg",
      "image": "assets/images/frtu.png",
      "isFavorite": false,
    },
    {
      "name": "Peaches",
      "price": "100 per/kg",
      "image": "assets/images/f.png",
      "isFavorite": false,
    },
    {
      "name": "Peaches",
      "price": "100 per/kg",
      "image": "assets/images/f.png",
      "isFavorite": false,
    },
    {
      "name": "Peaches",
      "price": "100 per/kg",
      "image": "assets/images/f.png",
      "isFavorite": false,
    },
  ];
  List<Map<String, dynamic>> list4 = [
    {
      "name": "cantaloupe",
      "price": "120 per/kg",
      "image": "assets/images/ss.png",
      "isFavorite": false,
    },
    {
      "name": "Watermelon",
      "price": "130 per/kg",
      "image": "assets/images/watermalon.png",
      "isFavorite": false,
    },
    {
      "name": "Tatty",
      "price": "170 per/kg",
      "image": "assets/images/kolu.png",
      "isFavorite": false,
    },
    {
      "name": "Watermelon",
      "price": "130 per/kg",
      "image": "assets/images/watermalon.png",
      "isFavorite": false,
    },
    {
      "name": "Tatty",
      "price": "170 per/kg",
      "image": "assets/images/kolu.png",
      "isFavorite": false,
    },
  ];
  List<Map<String, dynamic>> list5 = [
    {
      "name": "Broccoli",
      "price": "190 per/kg",
      "image": "assets/images/broccoli.png",
      "isFavorite": false,
    },
    {
      "name": "Brinjels",
      "price": "80 per/kg",
      "image": "assets/images/BRINJAL.png",
      "isFavorite": false,
    },
    {
      "name": "Coriander",
      "price": "70 per/kg",
      "image": "assets/images/Coriander.png",
      "isFavorite": false,
    },
    {
      "name": "Broccoli",
      "price": "190 per/kg",
      "image": "assets/images/broccoli.png",
      "isFavorite": false,
    },
  ];
  List<Map<String, dynamic>> list6 = [
    {
      "name": "Multi Vegetables",
      "price": "370 per/kg",
      "image": "assets/images/mixup.png",
      "isFavorite": false,
    },
    {
      "name": "PaperVeg tables",
      "price": "270 per/kg",
      "image": "assets/images/mixveg.png",
      "isFavorite": false,
    },
    {
      "name": "Tropicana",
      "price": "140 per/kg",
      "image": "assets/images/mixvegetable.png",
      "isFavorite": false,
    },
    {
      "name": "Multi Vegetables",
      "price": "370 per/kg",
      "image": "assets/images/mixup.png",
      "isFavorite": false,
    },
  ];
  List<Map<String, dynamic>> list7 = [
    {
      "name": "Onion",
      "price": "130 per/kg",
      "image": "assets/images/Onions.png",
      "isFavorite": false,
    },
    {
      "name": "Garlic",
      "price": "110 per/kg",
      "image": "assets/images/garlic.png",
      "isFavorite": false,
    },
    {
      "name": "Ginger",
      "price": "180 per/kg",
      "image": "assets/images/gignir.png",
      "isFavorite": false,
    },
    {
      "name": "Onion",
      "price": "130 per/kg",
      "image": "assets/images/Onions.png",
      "isFavorite": false,
    },
  ];
  List<Map<String, dynamic>> list8 = [
    {
      "name": "carrot",
      "price": "130 per/kg",
      "image": "assets/images/carrot.png",
      "isFavorite": false,
    },
    {
      "name": "Roots",
      "price": "130 per/kg",
      "image": "assets/images/rab.png",
      "isFavorite": false,
    },
    {
      "name": "sweet potato",
      "price": "80 per/kg",
      "image": "assets/images/sakriya.png",
      "isFavorite": false,
    },
    {
      "name": "carrot",
      "price": "130 per/kg",
      "image": "assets/images/carrot.png",
      "isFavorite": false,
    },
  ];
  List<Map<String, dynamic>> list9 = [
    {
      "name": "cashewnuts",
      "price": "550 per/kg",
      "image": "assets/images/kaju.png",
      "isFavorite": false,
    },
    {
      "name": "Walnuts",
      "price": "200 per/kg",
      "image": "assets/images/walnuts.png",
      "isFavorite": false,
    },
    {
      "name": "Hazelnuts",
      "price": "120 per/kg",
      "image": "assets/images/walnuts.png",
      "isFavorite": false,
    },
    {
      "name": "cashewnuts",
      "price": "550 per/kg",
      "image": "assets/images/kaju.png",
      "isFavorite": false,
    },
  ];
  List<Map<String, dynamic>> list10 = [
    {
      "name": "Multi Dry Fruits",
      "price": "900 per/kg",
      "image": "assets/images/mixdry.png",
      "isFavorite": false,
    },
    {
      "name": "Paper Dry Fruits ",
      "price": "600 per/kg",
      "image": "assets/images/mixdryfruits.png",
      "isFavorite": false,
    },
    {
      "name": "Tropicana",
      "price": "520 per/kg",
      "image": "assets/images/mixdryfruits.png",
      "isFavorite": false,
    },
    {
      "name": "Multi Dry Fruits",
      "price": "900 per/kg",
      "image": "assets/images/mixdry.png",
      "isFavorite": false,
    },
  ];
  List<Map<String, dynamic>> list11 = [
    {
      "name": "Almond",
      "price": "390 per/kg",
      "image": "assets/images/Almond.png",
      "isFavorite": false,
    },
    {
      "name": "Anjeer",
      "price": "260 per/kg",
      "image": "assets/images/anjeer.png",
      "isFavorite": false,
    },
    {
      "name": "Aam Paper",
      "price": "180 per/kg",
      "image": "assets/images/aampaper.png",
      "isFavorite": false,
    },
    {
      "name": "Almond",
      "price": "390 per/kg",
      "image": "assets/images/Almond.png",
      "isFavorite": false,
    },
  ];
  List<Map<String, dynamic>> list12 = [
    {
      "name": "Dry chilies",
      "price": "320 per/kg",
      "image": "assets/images/kashmiri.png",
      "isFavorite": false,
    },
    {
      "name": "Baddie",
      "price": "600 per/kg",
      "image": "assets/images/badiya.png",
      "isFavorite": false,
    },
    {
      "name": "Cloves",
      "price": "500 per/kg",
      "image": "assets/images/laving.png",
      "isFavorite": false,
    },
    {
      "name": "Dry chilies",
      "price": "320 per/kg",
      "image": "assets/images/kashmiri.png",
      "isFavorite": false,
    },
  ];
  int vegetablesSelectedIndex = 0;
  List vegetablesList = ["Vegetables", "Fruits", "Dry Fruits"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 115,
                width: double.infinity,
                color: const Color(0xff4CA300),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Fruits market",
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "poppins",
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -20,
                left: 15,
                right: 15,
                child: Container(
                  height: 45,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 1),
                        color: Colors.black12,
                        blurRadius: 12,
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: Icon(Icons.search),
                      ),
                      hintText: "search",
                      hintStyle: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 30,
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  vegetablesList.length,
                  (index) => GestureDetector(
                    onTap: () {
                      vegetablesSelectedIndex = index;
                      setState(() {});
                    },
                    child: index == vegetablesSelectedIndex
                        ? Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              color: const Color(0xffCC7D00),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                vegetablesList[index],
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        : Container(
                            height: 30,
                            width: 85,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                vegetablesList[index],
                              ),
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: IndexedStack(
                index: vegetablesSelectedIndex,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 5),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Row(
                            children: const [
                              Text(
                                "Organic Vegetables",
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(20% Off)",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 5),
                            child: Text(
                              "Pick up from organic farms",
                              style: TextStyle(
                                  fontFamily: "poppins", fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        clipBehavior: Clip.none,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: List.generate(
                              list5.length,
                              (index) => FruitBoxWidget(
                                title: list5[index]["name"],
                                image: list5[index]["image"],
                                price: list5[index]["price"],
                                isFavorite: list5[index]["isFavorite"],
                                isOnPress: () {
                                  if (list5[index]["isFavorite"]) {
                                    list5[index]["isFavorite"] = false;
                                  } else {
                                    list5[index]["isFavorite"] = true;
                                  }
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, bottom: 5, top: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Row(
                            children: const [
                              Text(
                                "Mixed Vegetables Pack",
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(10% Off)",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 5),
                            child: Text(
                              "Vegetable mix fresh pack",
                              style: TextStyle(
                                  fontFamily: "poppins", fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        clipBehavior: Clip.none,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: List.generate(
                              list6.length,
                              (index) => FruitBoxWidget(
                                title: list6[index]["name"],
                                image: list6[index]["image"],
                                price: list6[index]["price"],
                                isFavorite: list6[index]["isFavorite"],
                                isOnPress: () {
                                  if (list6[index]["isFavorite"]) {
                                    list6[index]["isFavorite"] = false;
                                  } else {
                                    list6[index]["isFavorite"] = true;
                                  }
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, bottom: 5, top: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Row(
                            children: const [
                              Text(
                                "Allium Vegetables",
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(20% Off)",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 5),
                            child: Text(
                              "Fresh Allium Vegetables",
                              style: TextStyle(
                                  fontFamily: "poppins", fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        clipBehavior: Clip.none,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: List.generate(
                              list7.length,
                              (index) => FruitBoxWidget(
                                title: list7[index]["name"],
                                image: list7[index]["image"],
                                price: list7[index]["price"],
                                isFavorite: list7[index]["isFavorite"],
                                isOnPress: () {
                                  if (list7[index]["isFavorite"]) {
                                    list7[index]["isFavorite"] = false;
                                  } else {
                                    list7[index]["isFavorite"] = true;
                                  }
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, bottom: 5, top: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Row(
                            children: const [
                              Text(
                                "Root Vegetables",
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(5% Off)",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 5),
                            child: Text(
                              "Fresh Root Vegetables",
                              style: TextStyle(
                                  fontFamily: "poppins", fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        clipBehavior: Clip.none,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: List.generate(
                              list8.length,
                              (index) => FruitBoxWidget(
                                title: list8[index]["name"],
                                image: list8[index]["image"],
                                price: list8[index]["price"],
                                isFavorite: list8[index]["isFavorite"],
                                isOnPress: () {
                                  if (list8[index]["isFavorite"]) {
                                    list8[index]["isFavorite"] = false;
                                  } else {
                                    list8[index]["isFavorite"] = true;
                                  }
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 5),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Row(
                            children: const [
                              Text(
                                "Organic Fruits",
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(20% Off)",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 5),
                            child: Text(
                              "Pick up from organic farms",
                              style: TextStyle(
                                  fontFamily: "poppins", fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        clipBehavior: Clip.none,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: List.generate(
                              list.length,
                              (index) => FruitBoxWidget(
                                title: list[index]["name"],
                                image: list[index]["image"],
                                price: list[index]["price"],
                                isFavorite: list[index]["isFavorite"],
                                isOnPress: () {
                                  if (list[index]["isFavorite"]) {
                                    list[index]["isFavorite"] = false;
                                  } else {
                                    list[index]["isFavorite"] = true;
                                  }
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, bottom: 5, top: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Row(
                            children: const [
                              Text(
                                "Mixed Fruits Pack",
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(10% Off)",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 5),
                            child: Text(
                              "Fruit mix fresh pack",
                              style: TextStyle(
                                  fontFamily: "poppins", fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        clipBehavior: Clip.none,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: List.generate(
                              list2.length,
                              (index) => FruitBoxWidget(
                                title: list2[index]["name"],
                                image: list2[index]["image"],
                                price: list2[index]["price"],
                                isFavorite: list2[index]["isFavorite"],
                                isOnPress: () {
                                  if (list2[index]["isFavorite"]) {
                                    list2[index]["isFavorite"] = false;
                                  } else {
                                    list2[index]["isFavorite"] = true;
                                  }
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, bottom: 5, top: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Row(
                            children: const [
                              Text(
                                "Stone Fruits",
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(20% Off)",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 5),
                            child: Text(
                              "Fresh stone fruits",
                              style: TextStyle(
                                  fontFamily: "poppins", fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        clipBehavior: Clip.none,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: List.generate(
                              list3.length,
                              (index) => FruitBoxWidget(
                                title: list3[index]["name"],
                                image: list3[index]["image"],
                                price: list3[index]["price"],
                                isFavorite: list3[index]["isFavorite"],
                                isOnPress: () {
                                  if (list3[index]["isFavorite"]) {
                                    list3[index]["isFavorite"] = false;
                                  } else {
                                    list3[index]["isFavorite"] = true;
                                  }
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, bottom: 5, top: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Row(
                            children: const [
                              Text(
                                "Melons",
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(5% Off)",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 5),
                            child: Text(
                              "Fresh Melons fruits",
                              style: TextStyle(
                                  fontFamily: "poppins", fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        clipBehavior: Clip.none,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: List.generate(
                              list4.length,
                              (index) => FruitBoxWidget(
                                title: list4[index]["name"],
                                image: list4[index]["image"],
                                price: list4[index]["price"],
                                isFavorite: list4[index]["isFavorite"],
                                isOnPress: () {
                                  if (list4[index]["isFavorite"]) {
                                    list4[index]["isFavorite"] = false;
                                  } else {
                                    list4[index]["isFavorite"] = true;
                                  }
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 5),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Row(
                            children: const [
                              Text(
                                "Indehiscent Dry Fruits",
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(20% Off)",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 5),
                            child: Text(
                              "Pick up from organic farms",
                              style: TextStyle(
                                  fontFamily: "poppins", fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        clipBehavior: Clip.none,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: List.generate(
                              list9.length,
                              (index) => FruitBoxWidget(
                                title: list9[index]["name"],
                                image: list9[index]["image"],
                                price: list9[index]["price"],
                                isFavorite: list9[index]["isFavorite"],
                                isOnPress: () {
                                  if (list9[index]["isFavorite"]) {
                                    list9[index]["isFavorite"] = false;
                                  } else {
                                    list9[index]["isFavorite"] = true;
                                  }
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, bottom: 5, top: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Row(
                            children: const [
                              Text(
                                "Mixed Dry Fruits Pack",
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(10% Off)",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 5),
                            child: Text(
                              " Dry Fruits mix fresh pack",
                              style: TextStyle(
                                  fontFamily: "poppins", fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        clipBehavior: Clip.none,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: List.generate(
                              list10.length,
                              (index) => FruitBoxWidget(
                                title: list10[index]["name"],
                                image: list10[index]["image"],
                                price: list10[index]["price"],
                                isFavorite: list10[index]["isFavorite"],
                                isOnPress: () {
                                  if (list10[index]["isFavorite"]) {
                                    list10[index]["isFavorite"] = false;
                                  } else {
                                    list10[index]["isFavorite"] = true;
                                  }
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, bottom: 5, top: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Row(
                            children: const [
                              Text(
                                "Dehiscent Dry Fruits",
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(15% Off)",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 5),
                            child: Text(
                              "Fresh Dehiscent Dry fruits",
                              style: TextStyle(
                                  fontFamily: "poppins", fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        clipBehavior: Clip.none,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: List.generate(
                              list11.length,
                              (index) => FruitBoxWidget(
                                title: list11[index]["name"],
                                image: list11[index]["image"],
                                price: list11[index]["price"],
                                isFavorite: list11[index]["isFavorite"],
                                isOnPress: () {
                                  if (list11[index]["isFavorite"]) {
                                    list11[index]["isFavorite"] = false;
                                  } else {
                                    list11[index]["isFavorite"] = true;
                                  }
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, bottom: 5, top: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Row(
                            children: const [
                              Text(
                                "Kashmiri Dry fruits",
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(5% Off)",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 5),
                            child: Text(
                              "Fresh Kashmiri Dry Fruits",
                              style: TextStyle(
                                  fontFamily: "poppins", fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        clipBehavior: Clip.none,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: List.generate(
                              list12.length,
                              (index) => FruitBoxWidget(
                                title: list12[index]["name"],
                                image: list12[index]["image"],
                                price: list12[index]["price"],
                                isFavorite: list12[index]["isFavorite"],
                                isOnPress: () {
                                  if (list12[index]["isFavorite"]) {
                                    list12[index]["isFavorite"] = false;
                                  } else {
                                    list12[index]["isFavorite"] = true;
                                  }
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
