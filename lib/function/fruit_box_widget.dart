import 'package:flutter/material.dart';

import '../itemview.dart';

class FruitBoxWidget extends StatefulWidget {
  final String title;
  final String image;
  final String price;
  final bool isFavorite;
  final Function() isOnPress;
  const FruitBoxWidget(
      {Key? key,
      required this.title,
      required this.image,
      required this.price,
      required this.isFavorite,
      required this.isOnPress})
      : super(key: key);

  @override
  State<FruitBoxWidget> createState() => _FruitBoxWidgetState();
}

class _FruitBoxWidgetState extends State<FruitBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Grapes(
              name: widget.title,
              image: widget.image,
              price: widget.price,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 115,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  widget.image,
                  height: 130,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: List.generate(
                  5,
                  (index) => index == 4
                      ? Icon(
                          Icons.star,
                          size: 18,
                          color: Color(0xffA6A1A1),
                        )
                      : Icon(
                          Icons.star,
                          size: 18,
                          color: Color(0xffe9ab5f),
                        ),
                ),
              ),
              Text(
                widget.title,
                style: TextStyle(
                    fontFamily: "poppins", fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Text("\u{20B9}${widget.price}")
            ],
          ),
          Positioned(
            right: 20,
            top: 5,
            child: InkWell(
              onTap: widget.isOnPress,
              child: CircleAvatar(
                radius: 13,
                backgroundColor: Colors.white,
                child: widget.isFavorite
                    ? Icon(
                        Icons.favorite,
                        size: 18,
                        color: Colors.red,
                      )
                    : Icon(
                        Icons.favorite_border,
                        size: 18,
                        color: Colors.red,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
