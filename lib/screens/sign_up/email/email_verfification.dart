import 'package:araby_ai/screens/mainpages/home.dart';
import 'package:araby_ai/screens/sign_up/email/email_confirmation.dart';
import 'package:araby_ai/widget/custom_button.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/assets/images/emailverification.png',
                  height: 220,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomText(
                  text: 'We have sent a email to',
                ),
                const CustomText(
                  text: 'you@example.com',
                  fontWeight: FontWeight.bold,
                ),
                const CustomText(
                    text:
                        'Please click the link in the email to verify your \naccount'),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                            builder: (context) => const EmailConfirmation()),
                      );
                    },
                    width: double.infinity,
                    text: 'CHECK E-MAIL'),
                const SizedBox(
                  height: 30,
                ),
                const CustomText(
                  text:
                      'Didn’t receive an email? Check your spam folder ! \nEmails may take a couple minutes to arrive.',
                  textColor: Colors.grey,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CustomText(
                      text: 'Already validated your Account',
                      textColor: Colors.grey,
                    ),
                    CustomText(text: 'Go to LogIn', textColor: Colors.blue),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
