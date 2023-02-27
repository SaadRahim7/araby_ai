import 'package:araby_ai/screens/add_card.dart';
import 'package:araby_ai/screens/bottom_navbar.dart';
import 'package:araby_ai/screens/error.dart';
import 'package:araby_ai/screens/mainpages/profile.dart';
import 'package:araby_ai/screens/setting.dart';
import 'package:araby_ai/screens/social_media/image_gen.dart';
import 'package:araby_ai/screens/startup/splash_screen.dart';

import 'package:flutter/material.dart';

import 'screens/social_media/facebook_status_result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavBar());
  }
}
