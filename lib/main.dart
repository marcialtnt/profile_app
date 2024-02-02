import 'package:flutter/material.dart';
import 'package:profile_app/pages/profile_page.dart';
import 'package:profile_app/pages/load_page.dart';

void main() {
  runApp(
    MaterialApp(
      //home: ProfilePage(),
      home: LoadPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
