import 'package:araby_ai/screens/sign_up.dart';
import 'package:araby_ai/screens/sign_up/email/sign_in.dart';
import 'package:araby_ai/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Column(
              children: [
                //Image
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      transform: Matrix4.translationValues(0.0, -100.0, 0.0),
                      width: double.maxFinite,
                      child: Image.asset("lib/assets/images/background.png"),
                    ),
                    Positioned(
                      top: 150,
                      child:
                          Image.asset(height: 300, "lib/assets/gif/robot.gif"),
                    )
                  ],
                ),

                // Create account & Login Button
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: [
                      CustomButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                                builder: (context) => const SignUp()),
                          );
                        },
                        width: double.infinity,
                        text: "CREATE ACCOUNT",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                                builder: (context) => const SignIn()),
                          );
                        },
                        width: double.infinity,
                        text: "LOGIN",
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                //google faceboob apple icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Divider(
                      color: Colors.black,
                      thickness: 1.0,
                    ),
                    Text('Or You Can Use', style: TextStyle(fontSize: 14)),
                    Divider(
                      color: Colors.black,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('lib/assets/images/google.png'),
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset('lib/assets/images/facebook.png'),
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset('lib/assets/images/apple.png')
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
