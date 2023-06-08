import 'package:flutter/material.dart';

class LanguagesSetting extends StatefulWidget {
  const LanguagesSetting({Key? key}) : super(key: key);

  @override
  State<LanguagesSetting> createState() => _LanguagesSettingState();
}

class _LanguagesSettingState extends State<LanguagesSetting> {
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
                    " Languages Setting",
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
              children: const [
                Text(
                  "Language",
                  style: TextStyle(
                      fontFamily: "poppins", fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Row(
              children: const [
                Text(
                  "Language",
                  style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Text(
                  "English",
                  style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "(United\n States)",
                  style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.navigate_next,
                  size: 29,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
