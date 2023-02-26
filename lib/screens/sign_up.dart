import 'package:araby_ai/screens/sign_up/email/email_register.dart';
import 'package:araby_ai/screens/sign_up/mobile/numberregister.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late int index;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    setState(() {
      index = _tabController.index;
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const StackWidget(),

            //Tab Bar View Pages
            SizedBox(
              height: 50,
              child: TabBar(
                controller: _tabController,
                labelColor: const Color(0xff2476dc),
                unselectedLabelColor: Colors.grey,
                indicatorColor: const Color(0xff2476dc),
                indicatorWeight: 4,
                labelStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                tabs: const [
                  Text('E Mail'),
                  Text('Mobile'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  EmailRegister(),
                  NumberRegister(),
                ],
              ),
            )
          ],
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
      height: 200,
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
            top: 30,
            child: SizedBox(
              height: 50,
              child: Image.asset(height: 300, "lib/assets/images/logo.png"),
            ),
          ),
          const Positioned(
            top: 95,
            child: Text(
              'Get Started',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 120,
            child: Text(
              'Create an account to continue !',
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
