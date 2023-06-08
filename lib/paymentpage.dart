import 'package:flutter/material.dart';
import 'package:fruits_app/paymentwallet.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Total Bill : Rs 570",
                    style: TextStyle(
                        fontFamily: "poppins", fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.shop_outlined,
                    size: 30,
                    color: Colors.black45,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Organic Fruit shop",
                        style: TextStyle(
                            fontFamily: "poppins", fontWeight: FontWeight.bold),
                      ),
                      Text("2 items : Delivery Time 30 min")
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: List.generate(
                        5,
                        (index) => Padding(
                          padding: const EdgeInsets.only(top: 1),
                          child: Container(
                            height: 6,
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    size: 35,
                    color: Colors.black45,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Home Address",
                        style: TextStyle(
                            fontFamily: "poppins", fontWeight: FontWeight.bold),
                      ),
                      Text("D Block Ram Nagar,Near Sai Petrol\n"
                          "Pump Ring Road,Nagpur-440001")
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                color: Colors.black.withOpacity(0.2),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 90,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Credit/Debit Cards",
                              style: TextStyle(
                                  fontFamily: "poppins",
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.credit_card,
                                  size: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    children: [
                                      Text("************4356"),
                                      Text("Manish Chutke"),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Text(
                          "ADD NEW CARD",
                          style: TextStyle(
                              color: Color(0xff69A03A),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.black,
                      height: 1,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Save and Pay via cards",
                    style: TextStyle(fontFamily: "poppins"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/mastercard.png"),
                      SizedBox(width: 20),
                      Image.asset("assets/images/maestro.png"),
                      SizedBox(width: 20),
                      Image.asset("assets/images/visa.png")
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wallet Method",
                        style: TextStyle(
                            fontFamily: "poppins",
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/phonepe.png"),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Phone Pay",
                            style:
                                TextStyle(fontFamily: "poppins", fontSize: 18),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        height: 3,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/Googlepay.png"),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Google Pay",
                            style:
                                TextStyle(fontFamily: "poppins", fontSize: 18),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        height: 3,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/paypal.png"),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Pay pal",
                            style:
                                TextStyle(fontFamily: "poppins", fontSize: 18),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentWallet(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xff69A03A),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "PAY NOW",
                      style: TextStyle(
                          fontFamily: "poppins",
                          color: Colors.white,
                          fontSize: 17),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
