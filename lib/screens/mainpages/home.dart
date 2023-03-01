import 'package:araby_ai/screens/social_media/image_gen.dart';
import 'package:araby_ai/screens/social_media/socialmedia.dart';
import 'package:araby_ai/widget/custom_card.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:araby_ai/widget/custom_textfeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: Material(
          color: Colors.white,
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Image.asset("lib/assets/images/logo.png", height: 40),
                    const SizedBox(
                      width: 20,
                    ),
                    const Expanded(
                      child: CustomTextField(
                        prefixIcon: Icon(
                          Icons.search_rounded,
                        ),
                        hintText: "Looking for something",
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.notifications_none_rounded,
                      size: 38,
                    )
                  ],
                )),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            bottom: 10,
          ),
          child: Column(
            children: const [
              SearchDetailNotification(),
              SizedBox(
                height: 20,
              ),
              CardSec(),
            ],
          ),
        ),
      ),
    ));
  }
}

//Search Notification Text
class SearchDetailNotification extends StatefulWidget {
  const SearchDetailNotification({super.key});

  @override
  State<SearchDetailNotification> createState() =>
      _SearchDetailNotificationState();
}

class _SearchDetailNotificationState extends State<SearchDetailNotification> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Textt Image
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CustomText(text: "Hello Username"),
                      Text(
                        "How may I help you today ? ",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 30,
                        right: 40,
                        child: Image.asset(
                          "lib/assets/images/background1.png",
                        ),
                      ),
                      Image.asset(
                        "lib/assets/gif/robot3.gif",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Choose the type of content you would like to create for now:",
            style: TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}

//Card
class CardSec extends StatelessWidget {
  const CardSec({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //first row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(builder: (context) => const ImageGen()),
                  );
                },
                child: const CustomCard(
                    title: "Images", image: "lib/assets/images/image.png"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                        builder: (context) => const SocialMedia()),
                  );
                },
                child: const CustomCard(
                    title: "Social Media",
                    image: "lib/assets/images/socialmedia.png"),
              ),
              const CustomCard(
                  title: "Emails", image: "lib/assets/images/email.png"),
            ],
          ),

          //second row
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomCard(title: "Ads", image: "lib/assets/images/Ads.png"),
              CustomCard(
                  title: "Messages", image: "lib/assets/images/messaging.png"),
              CustomCard(title: "SEO", image: "lib/assets/images/seo.png"),
            ],
          ),

          //thred Row

          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomCard(
                  title: "E Commerce",
                  image: "lib/assets/images/ecommerce.png"),
              CustomCard(
                  title: "Long Doucment",
                  image: "lib/assets/images/longdocuments.png"),
              CustomCard(title: "Other", image: "lib/assets/images/other.png"),
            ],
          )
        ],
      ),
    );
  }
}
