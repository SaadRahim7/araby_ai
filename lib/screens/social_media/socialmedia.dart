import 'package:araby_ai/widget/custom_card2.dart';
import 'package:araby_ai/widget/custom_textfeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'facebook_status.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

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
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back_ios_new_rounded)),
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
          child: Column(
            children: const [
              SocialCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialCard extends StatelessWidget {
  const SocialCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          //First Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomCard2(
                image: "lib/assets/socialimage/facebook.png",
                title: "Facebook",
                decription: "Status",
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                        builder: (context) => const FacebookStatus()),
                  );
                },
              ),
              const CustomCard2(
                image: "lib/assets/socialimage/instagram.png",
                title: "Instagram",
                decription: "Caption",
              )
            ],
          ),

          //Second Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CustomCard2(
                image: "lib/assets/socialimage/linkdin.png",
                title: "Linkdin",
                decription: "Post",
              ),
              CustomCard2(
                image: "lib/assets/socialimage/socialmedia.png",
                title: "Social Media",
                decription: "Profile Bio",
              )
            ],
          ),

          //Third Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CustomCard2(
                image: "lib/assets/socialimage/tiktok.png",
                title: "Tiktok Video",
                decription: "Idea",
              ),
              CustomCard2(
                image: "lib/assets/socialimage/twitter.png",
                title: "Tweet",
              )
            ],
          ),
        ],
      ),
    );
  }
}
