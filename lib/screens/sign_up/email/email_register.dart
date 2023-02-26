import 'package:araby_ai/screens/sign_up/email/email_confirmation.dart';
import 'package:araby_ai/screens/sign_up/email/email_verfification.dart';
import 'package:araby_ai/widget/custom_button.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:araby_ai/widget/custom_textfeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailRegister extends StatefulWidget {
  const EmailRegister({super.key});

  @override
  State<EmailRegister> createState() => _EmailRegisterState();
}

class _EmailRegisterState extends State<EmailRegister> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Email
              const CustomText(text: 'E-mail Address:'),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                hintText: "you@example.com",
              ),
              const SizedBox(
                height: 20,
              ),

              //Password
              const CustomText(text: 'Password:'),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                hintText: "Minimum 8 characters",
              ),
              const SizedBox(
                height: 20,
              ),

              //Username
              const CustomText(text: 'Username:'),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                hintText: "Placeholder",
              ),

              //terms and condition
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const Text(
                    'I have read and accept terms and conditions',
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              //Button
              CustomButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (context) => const EmailVerification()),
                    );
                  },
                  width: double.infinity,
                  text: "CREATE ACCOUNT"),
              const SizedBox(
                height: 20,
              ),

              //Google Apple Facebook
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Text
                  const CustomText(text: '-OR-'),
                  const SizedBox(
                    height: 25,
                  ),

                  //Icon
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/assets/images/google.png'),
                        const SizedBox(
                          width: 18,
                        ),
                        Image.asset('lib/assets/images/facebook.png'),
                        const SizedBox(
                          width: 18,
                        ),
                        Image.asset('lib/assets/images/apple.png')
                      ],
                    ),
                  ),

                  //Sign up account
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CustomText(text: 'Dont have an Account?'),
                      CustomText(text: 'Sign Up', textColor: Colors.blue),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
