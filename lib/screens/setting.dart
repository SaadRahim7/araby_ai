import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

import '../widget/custom_text.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading:
            const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
        title: const Text("Setting", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: const SettingSec(),
    ));
  }
}

//setting

class SettingSec extends StatefulWidget {
  const SettingSec({super.key});

  @override
  State<SettingSec> createState() => _SettingSecState();
}

class _SettingSecState extends State<SettingSec> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        SettingsGroup(
          title: "Account Settings",
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 16),
          children: [
            SimpleSettingsTile(
              title: "Edit Profile",
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SimpleSettingsTile(
              title: "Security and Login",
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SimpleSettingsTile(
              title: "Payment And Cards",
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        SettingsGroup(
          title: "CONTENT & ACTIVITY",
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 16),
          children: [
            SimpleSettingsTile(
              title: "Edit Profile",
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SimpleSettingsTile(
              title: "Security and Login",
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SimpleSettingsTile(
              title: "Accessibility",
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
