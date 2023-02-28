import 'package:araby_ai/screens/add_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key, this.mycolor});

  final mycolor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: mycolor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Credit",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Card",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              Image.asset(
                "lib/assets/images/nfc.png",
              ),
              const Text(
                "1234  5678  9090",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              const SizedBox(
                height: 8,
              ),
              const Divider(
                thickness: 10,
                color: Colors.yellow,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AddCardPayment extends StatelessWidget {
  const AddCardPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xff2476dc), Color(0xffae9bfa)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.filter_center_focus_rounded,
              color: Colors.white,
              size: 60,
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(builder: (context) => const AddCard()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: const Text(
                  "Add New",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
