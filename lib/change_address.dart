import 'package:flutter/material.dart';

class ChangeAddressPage extends StatefulWidget {
  const ChangeAddressPage({Key? key}) : super(key: key);

  @override
  State<ChangeAddressPage> createState() => _ChangeAddressPageState();
}

class _ChangeAddressPageState extends State<ChangeAddressPage> {
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
                    "Change Address",
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
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Row(
              children: [
                Text(
                  "Address",
                  style: TextStyle(
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "D Block  Ram Nagar ,Near Sai Petrol\n"
                        " Pump Ring Road Nagpur-440001.",
                    hintStyle: TextStyle(fontFamily: "poppins", fontSize: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  maxLines: 4,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff69A03A),
              borderRadius: BorderRadius.circular(10),
            ),
            child: GestureDetector(
              onTap: () {},
              child: const Center(
                child: Text(
                  "Change",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
