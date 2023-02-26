import 'package:araby_ai/screens/bottom_navbar.dart';
import 'package:araby_ai/widget/custom_button.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:araby_ai/widget/custom_textfeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              StackWidget(),
              EmailPass(),
              SizedBox(
                height: 25,
              ),
              OnlineAuth(),
            ],
          ),
        ),
      ),
    );
  }
}

//Text & Image
class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 260,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.maxFinite,
            transform: Matrix4.translationValues(0.0, -80.0, 0.0),
            child: Image.asset("lib/assets/images/background.png",
                fit: BoxFit.cover),
          ),
          Positioned(
            top: 30,
            child: SizedBox(
              height: 50,
              child: Image.asset(height: 300, "lib/assets/images/logo.png"),
            ),
          ),
          const Positioned(
            top: 95,
            child: Text(
              'Lets Sign you in',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 120,
            child: Text(
              'Welcome bach you have been missed!',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Email Password
class EmailPass extends StatefulWidget {
  const EmailPass({super.key});

  @override
  State<EmailPass> createState() => _EmailPassState();
}

class _EmailPassState extends State<EmailPass> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Email
          const CustomText(text: 'E-mail Address:'),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(),
          const SizedBox(
            height: 20,
          ),

          //Password
          const CustomText(text: 'Password:'),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(),

          //Login Button
          const SizedBox(
            height: 25,
          ),
          CustomButton(
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(builder: (context) => const NavBar()),
                );
              },
              width: double.infinity,
              text: 'Logn'),

          //Forget Password
          const SizedBox(
            height: 10,
          ),
          const CustomText(text: 'Forget Passrword ?', fontSize: 14),
        ],
      ),
    );
  }
}

// Google Facebook Apple
class OnlineAuth extends StatelessWidget {
  const OnlineAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
