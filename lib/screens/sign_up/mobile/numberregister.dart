import 'package:araby_ai/screens/sign_up/mobile/otpverification.dart';
import 'package:araby_ai/widget/custom_button.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class NumberRegister extends StatefulWidget {
  const NumberRegister({super.key});

  @override
  State<NumberRegister> createState() => _NumberRegisterState();
}

class _NumberRegisterState extends State<NumberRegister> {
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
              const CustomText(text: 'E-mail Address:'),
              const SizedBox(
                height: 10,
              ),

              //number field
              IntlPhoneField(
                decoration: const InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
              ),

              //button
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (context) => const OtpVerification()),
                    );
                  },
                  width: double.infinity,
                  text: "NEXT"),
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
