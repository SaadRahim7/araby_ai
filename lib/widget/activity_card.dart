import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard(
      {super.key,
      required this.date,
      required this.plan,
      required this.price,
      required this.image});

  final String date;
  final String plan;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xff2476dc), Color(0xffae9bfa)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(image),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    plan,
                  ),
                  Text(
                    date,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Spacer(),
              Text(
                price,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
