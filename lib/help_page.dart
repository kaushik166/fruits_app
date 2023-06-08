import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
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
                    "Help",
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
          Text(
            "Lorem Ipsum is simply dummy text of the printing\n"
            "and typesetting industry. Lorem Ipsum has been\n"
            "the industry’s standard dummy text ever since the\n"
            "1500s, when an unknown printer took a galley of\n"
            "type and scrambled it to make a type specimen\n"
            "book. It has survived not only five centuries, but\n"
            "also the leap into electronic typesetting, remaining\n"
            "essentially unchanged. It was popularised in the\n"
            "1960s with the release of Letraset sheets containing\n"
            "Lorem Ipsum passages, and more recently with\n"
            "desktop publishing software like Aldus PageMaker\n"
            "including versions of Lorem Ipsum.",
            style: TextStyle(fontFamily: "poppins", fontSize: 15),
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing\n"
            "and typesetting industry. Lorem Ipsum has been\n"
            "the industry’s standard dummy text ever since the\n"
            "1500s, when an unknown printer took a galley of\n"
            "type and scrambled it to make a type specimen\n"
            "book. It has survived not only five centuries, but\n"
            "also the leap into electronic typesetting, remaining\n"
            "essentially unchanged. It was popularised in the\n"
            "1960s with the release of Letraset sheets containing\n"
            "Lorem Ipsum passages, and more recently with\n"
            "desktop publishing software like Aldus PageMaker\n"
            "including versions of Lorem Ipsum.",
            style: TextStyle(fontFamily: "poppins", fontSize: 15),
          ),
        ],
      ),
    );
  }
}
