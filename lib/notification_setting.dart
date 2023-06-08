import 'package:flutter/material.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({Key? key}) : super(key: key);

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool isSwitch = true;
  bool isSwitches = false;
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
                    "Notification Setting",
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
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.notifications,
                color: Color(0xff69A03A),
                size: 36,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Account",
                    style: TextStyle(
                        fontFamily: "poppins",
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "you have receive daily update",
                    style: TextStyle(
                      fontFamily: "poppins",
                    ),
                  ),
                ],
              ),
              Switch(
                activeColor: Color(0xff69A03A),
                value: isSwitch,
                onChanged: (bool? k) {
                  isSwitch = k!;
                  setState(() {});
                },
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.notifications,
                color: Color(0xff69A03A),
                size: 36,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pramotional Notifications",
                    style: TextStyle(
                        fontFamily: "poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "you have receive daily update",
                    style: TextStyle(
                      fontFamily: "poppins",
                    ),
                  ),
                ],
              ),
              Switch(
                value: isSwitches,
                activeColor: Color(0xff69A03A),
                onChanged: (bool? k) {
                  isSwitches = k!;
                  setState(() {});
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
