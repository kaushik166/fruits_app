import 'package:flutter/material.dart';

class AccountSetting extends StatefulWidget {
  const AccountSetting({Key? key}) : super(key: key);

  @override
  State<AccountSetting> createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {
  List<Map<String, dynamic>> list = [
    {"name": "Security", "icon": Icons.security},
    {"name": "Deactivate Account", "icon": Icons.dangerous_outlined},
    {"name": "Delete Account", "icon": Icons.delete},
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
                    " Account Setting",
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
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                list.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Icon(
                        list[index]["icon"],
                        color: Color(0xff69A03A),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        list[index]["name"],
                        style: TextStyle(fontFamily: "poppins", fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
