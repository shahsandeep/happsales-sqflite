import 'package:flutter/material.dart';
import 'package:happsales_asignment/view/contact_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContactPage(),
    ),
  );
}
