import 'package:flutter/material.dart';

import 'account_setting.dart';
import 'change_address.dart';
import 'languages_setting.dart';
import 'notification_setting.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  List<Map<String, dynamic>> list = [
    {"name": "Account", "icon": Icons.person},
    {"name": "Notification", "icon": Icons.notifications},
    {"name": "Languages", "icon": Icons.language},
    {"name": "Change Address", "icon": Icons.location_on},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: const Color(0xff69A03A),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Setting",
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
                (index) => GestureDetector(
                  onTap: () {
                    if (index == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AccountSetting(),
                        ),
                      );
                    } else if (index == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotificationSetting(),
                        ),
                      );
                    } else if (index == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LanguagesSetting(),
                        ),
                      );
                    } else if (index == 3) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChangeAddressPage(),
                        ),
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      children: [
                        Icon(
                          list[index]["icon"],
                          color: const Color(0xff69A03A),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          list[index]["name"],
                          style: const TextStyle(
                              fontFamily: "poppins", fontSize: 16),
                        )
                      ],
                    ),
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
