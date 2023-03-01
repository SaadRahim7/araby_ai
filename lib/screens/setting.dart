import 'package:araby_ai/screens/cards_payment.dart';
import 'package:araby_ai/screens/edit_profile.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: Column(
                children: const [
                  StacKbar(),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            )
          ],
          body: const SettingSec(),
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
          height: 120,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: double.maxFinite,
                transform: Matrix4.translationValues(0.0, 0.0, 0.0),
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

//setting

class SettingSec extends StatefulWidget {
  const SettingSec({super.key});

  @override
  State<SettingSec> createState() => _SettingSecState();
}

class _SettingSecState extends State<SettingSec> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: ListView(
          shrinkWrap: false,
          children: [
            //Account Setting
            Row(
              children: const [
                CustomText(
                  text: "Account Setting",
                  fontSize: 18,
                  textColor: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(builder: (context) => const EditProfile()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: const [
                    Icon(Icons.person_outline_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(text: "Edit Profile"),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: const [
                  Icon(Icons.security_rounded),
                  SizedBox(
                    width: 10,
                  ),
                  CustomText(text: "Security and Login"),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(builder: (context) => const CardPaymenr()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: const [
                    Icon(Icons.attach_money_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(text: "Payments and Cards"),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
            ),

            //Content and Activity
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                CustomText(
                  text: "Content & Activity",
                  fontSize: 18,
                  textColor: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  const Icon(Icons.notifications_none_rounded),
                  const SizedBox(
                    width: 10,
                  ),
                  const CustomText(text: "Notifications"),
                  const Spacer(),
                  CupertinoSwitch(
                      activeColor: Colors.blue,
                      value: state,
                      onChanged: (value) {
                        state = value;
                        setState(
                          () {},
                        );
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: const [
                  Icon(Icons.language_rounded),
                  SizedBox(
                    width: 10,
                  ),
                  CustomText(text: "Language"),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: const [
                  Icon(Icons.accessibility_new_rounded),
                  SizedBox(
                    width: 10,
                  ),
                  CustomText(text: "Accessibility"),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
            ),

            //Support
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                CustomText(
                  text: "Support",
                  fontSize: 18,
                  textColor: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: const [
                  Icon(Icons.contact_support_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  CustomText(text: "Help Center"),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
            ),

            //About
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                CustomText(
                  text: "About",
                  fontSize: 18,
                  textColor: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: const [
                  Icon(Icons.workspace_premium_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  CustomText(text: "Term of Services"),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: const [
                  Icon(Icons.policy_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  CustomText(text: "Privacy Policy"),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
            ),

            //Login
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                CustomText(
                  text: "Login",
                  fontSize: 18,
                  textColor: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: const [
                  Icon(Icons.account_circle_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  CustomText(text: "Switch Account"),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: const [
                  Icon(Icons.logout_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  CustomText(text: "Log Out"),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
