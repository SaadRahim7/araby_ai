import 'dart:async';

import 'package:araby_ai/screens/sign_up/mobile/username.dart';
import 'package:araby_ai/widget/custom_button.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  bool _isResendAgain = false;
  late Timer _timer;
  int _start = 60;

  void resend() {
    setState(() {
      _isResendAgain = true;
    });

    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        if (_start == 0) {
          _start = 60;
          _isResendAgain = false;
          timer.cancel();
        } else {
          _start--;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const CustomText(
                text: 'Enter OTP',
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              Center(
                child: Image.asset(
                  'lib/assets/images/otpverification.png',
                  height: 220,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                text: 'An authentication code has been sent to',
              ),
              const SizedBox(
                height: 8,
              ),

              //Number
              const CustomText(
                text: '(+971) 12 345 678 90',
              ),
              const SizedBox(
                height: 30,
              ),

              //Verify Code
              VerificationCode(
                fullBorder: true,
                onCompleted: (value) {},
                onEditing: (value) {},
                length: 6,
                underlineColor: const Color(0xff2476dc),
              ),

              //Resend Code
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomText(
                    text: "haven't get the code?",
                  ),
                  TextButton(
                    onPressed: () {
                      if (_isResendAgain) return;
                      resend();
                    },
                    child: CustomText(
                      text:
                          (_isResendAgain ? "Try again in $_start" : "Resend"),
                      textColor: const Color(0xff2476dc),
                    ),
                  ),
                ],
              ),

              //Button
              const SizedBox(
                height: 60,
              ),
              CustomButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(builder: (context) => const Username()),
                  );
                },
                width: double.infinity,
                text: 'CONTINUE',
              ),

              //Resend Code
              //   const SizedBox(
              //     height: 10,
              //   ),
              //   Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       const CustomText(
              //         text: "haven't get the code?",
              //       ),
              //       TextButton(
              //         onPressed: () {
              //           if (_isResendAgain) return;
              //           resend();
              //         },
              //         child: CustomText(
              //           text: (_isResendAgain
              //               ? "Try again in $_start"
              //               : "Resend"),
              //           textColor: const Color(0xff2476dc),
              //         ),
              //       ),
              //     ],
              //   )
              // ],
            ]),
          ),
        ),
      ),
    );
  }
}
