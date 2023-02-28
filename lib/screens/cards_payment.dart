import 'package:araby_ai/widget/activity_card.dart';
import 'package:araby_ai/widget/payment_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CardPaymenr extends StatefulWidget {
  const CardPaymenr({super.key});

  @override
  State<CardPaymenr> createState() => _CardPaymenrState();
}

class _CardPaymenrState extends State<CardPaymenr> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: Column(
                children: const [StacKbar()],
              ),
            )
          ],
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    height: 240,
                    child: PageView(
                      controller: _controller,
                      scrollDirection: Axis.horizontal,
                      children: const [
                        PaymentCard(mycolor: Colors.black),
                        PaymentCard(mycolor: Color(0xff7a14ff)),
                        AddCardPayment(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                        activeDotColor: Color(0xff7a14ff)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ActivityCard(
                    image: "lib/assets/images/rocket1.png",
                    date: "20/03/2023",
                    plan: "Basic Plan",
                    price: "\$325",
                  ),
                  const ActivityCard(
                    image: "lib/assets/images/rocket2.png",
                    date: "20/03/2023",
                    plan: "Basic Plan",
                    price: "\$325",
                  ),
                  const ActivityCard(
                    image: "lib/assets/images/rocket3.png",
                    date: "20/03/2023",
                    plan: "Basic Plan",
                    price: "\$325",
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class StacKbar extends StatelessWidget {
  const StacKbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: double.maxFinite,
                transform: Matrix4.translationValues(0.0, -80.0, 0.0),
                child: Image.asset("lib/assets/images/background.png",
                    fit: BoxFit.cover),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 30,
                  ),
                ),
              ),
              const Positioned(
                top: 20,
                left: 80,
                child: Text(
                  "Setting",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
