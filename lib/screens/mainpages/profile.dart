import 'package:araby_ai/screens/mainpages/profile_section/images_section.dart';
import 'package:araby_ai/screens/mainpages/profile_section/writing_section.dart';
import 'package:araby_ai/screens/sign_up/email/email_register.dart';
import 'package:araby_ai/screens/sign_up/mobile/numberregister.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late int index;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    setState(() {
      index = _tabController.index;
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
            physics: const BouncingScrollPhysics(),
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverToBoxAdapter(
                    child: Column(
                      children: const [ImageProfile(), Card()],
                    ),
                  )
                ],
            body: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: TabBar(
                    controller: _tabController,
                    labelColor: const Color(0xff2476dc),
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: const Color(0xff2476dc),
                    indicatorWeight: 4,
                    labelStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                    tabs: const [
                      Text('Writing'),
                      Text('Image'),
                    ],
                  ),
                ),
                Flexible(
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _tabController,
                    children: const [
                      WritingSection(),
                      ImageSection(),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

//Stack Image ProfileImage
class ImageProfile extends StatelessWidget {
  const ImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 250,
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
              const Positioned(
                top: 20,
                right: 20,
                child: Icon(
                  Icons.settings_outlined,
                  size: 30,
                ),
              ),
              Positioned(
                top: 70,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: const Color(0xff4343e2)),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset("lib/assets/images/profile.png"),
                    ),
                    const CustomText(
                      text: "Username",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomText(
                      text: "username@example.com",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//Card
class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xff2476dc), Color(0xffae9bfa), Color(0xff7a14ff)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        height: 220,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Trial Plan",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Word Count",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    "20 %",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              LinearPercentIndicator(
                barRadius: const Radius.circular(14),
                lineHeight: 15,
                percent: 0.2,
                progressColor: const Color(0xff7a14ff),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "500",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    "250",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      width: 2.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Upgrade Now',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
