import 'package:araby_ai/widget/custom_text.dart';
import 'package:flutter/material.dart';

class WritingSection extends StatelessWidget {
  const WritingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "lib/assets/socialimage/facebook.png",
                            height: 40,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const CustomText(
                            text: "Facebook Status",
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          const Spacer(),
                          const CustomText(
                            text: "26/02/2023",
                            textColor: Colors.grey,
                          ),
                        ],
                      ),
                      const Text(
                        "Lorem ipsum dolor sit amet consectetur. Morbi quam in urna id aliquet .....",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          CustomText(
                            text: "View",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          Icon(
                            Icons.arrow_right_alt_rounded,
                            size: 50,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
