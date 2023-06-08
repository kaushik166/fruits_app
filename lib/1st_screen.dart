import 'package:flutter/material.dart';
import 'package:fruits_app/loginpage.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int isIntro = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            isIntro == 2
                ? Container()
                : Padding(
                    padding: const EdgeInsets.only(right: 20, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 400,
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: pageController,
                onPageChanged: (value) {
                  isIntro = value;
                  setState(() {});
                },
                children: const [
                  Intro1(),
                  Intro2(),
                  Intro3(),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: index == isIntro
                      ? const CircleAvatar(
                          radius: 5,
                          backgroundColor: Color(0xff69A03A),
                        )
                      : Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.green),
                          ),
                        ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                if (isIntro == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                } else {
                  pageController.animateToPage(isIntro + 1,
                      duration: const Duration(microseconds: 500),
                      curve: Curves.bounceIn);
                }
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                height: 60,
                width: 200,
                color: const Color(0xff69A03A),
                child: Center(
                  child: isIntro == 2
                      ? const Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      : const Text(
                          "Next",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Intro1 extends StatelessWidget {
  const Intro1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/shopping.png",
          height: 300,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "E Shopping",
          style: TextStyle(fontFamily: "poppins", fontSize: 24),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Explore  top organic fruits & grab them",
          style: TextStyle(
              fontFamily: "poppins", fontSize: 17, color: Colors.black54),
        ),
      ],
    );
  }
}

class Intro2 extends StatelessWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/delivery.png",
          height: 300,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Delivery on the way",
          style: TextStyle(fontFamily: "poppins", fontSize: 24),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Get your order by speed delivery",
          style: TextStyle(
              fontFamily: "poppins", fontSize: 17, color: Colors.black54),
        ),
      ],
    );
  }
}

class Intro3 extends StatelessWidget {
  const Intro3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 19,
        ),
        Image.asset(
          "assets/images/deliveryready.png",
          height: 300,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Delivery Arrived",
          style: TextStyle(fontFamily: "poppins", fontSize: 24),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Order is arrived at your Place",
          style: TextStyle(
              fontFamily: "poppins", fontSize: 17, color: Colors.black54),
        ),
      ],
    );
  }
}
