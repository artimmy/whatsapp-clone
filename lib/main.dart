import 'package:flutter/material.dart';
import 'package:whatsapp_clone/home.dart';
import 'package:whatsapp_clone/login.dart';

void main() {
  runApp(MaterialApp(
    title: "WhatsApp",
    home: Login(),
    theme: ThemeData(
      primaryColor: const Color(0xff075E54),
      // ignore: deprecated_member_use
      accentColor: const Color(0xff25D366),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
