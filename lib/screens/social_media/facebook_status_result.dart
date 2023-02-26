import 'package:flutter/material.dart';

import '../../widget/custom_text.dart';

class FacebookResult extends StatefulWidget {
  const FacebookResult({super.key});

  @override
  State<FacebookResult> createState() => _FacebookResultState();
}

class _FacebookResultState extends State<FacebookResult> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'lib/assets/socialimage/facebook.png', // replace with your image path
                fit: BoxFit.contain,
                height: 32,
              ),
              const SizedBox(width: 15),
              const Text(
                'Facebook Status',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        body: const CardSec(),
      ),
    );
  }
}

class CardSec extends StatelessWidget {
  const CardSec({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: Container(
            height: 250,
            width: double.infinity,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //profile username copy
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2, color: const Color(0xff4343e2)),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset("lib/assets/images/profile.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            CustomText(
                              text: "Username",
                              fontWeight: FontWeight.bold,
                            ),
                            CustomText(
                              text: "1h",
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(Icons.copy)
                      ],
                    ),
                    const Text(
                      "My heart goes out to all of those affected by the devastating earthquake in Syria. Praying for safety and strength during this difficult time.",
                      style: TextStyle(fontSize: 16),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.favorite,
                          size: 20,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.thumb_up,
                          size: 20,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("2.9K"),
                        Spacer(),
                        Text("202 Comments"),
                        SizedBox(
                          width: 8,
                        ),
                        Text("60 shares"),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.thumb_up_outlined,
                          size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Like",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Spacer(),
                        Icon(
                          Icons.chat_bubble_outline_rounded,
                          size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Comment",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Spacer(),
                        Icon(
                          Icons.share_outlined,
                          size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Share",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
