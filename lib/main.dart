import 'package:flutter/material.dart';
import 'package:govmail/pages/compose_message_page.dart';
import 'package:govmail/pages/messages_page.dart';

void main() {
  runApp(const GovMailApp());
}

class GovMailApp extends StatelessWidget {
  const GovMailApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'GovMail App',
      debugShowCheckedModeBanner: false,
      home: MessagesPage(),
      // home: ComposeMessagePage()
    );
  }
}
