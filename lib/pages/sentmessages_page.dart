import 'package:flutter/material.dart';
import 'package:govmail/widget/drawer.dart';

class SentMessagesPage extends StatefulWidget {
  const SentMessagesPage({super.key});

  @override
  State<SentMessagesPage> createState() => _SentMessagesPageState();
}

class _SentMessagesPageState extends State<SentMessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sent', style: TextStyle(fontSize: 25),),
        centerTitle: true,
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.green,    
            child: Text('AJ', style: TextStyle(color: Colors.white),),
          ),
          SizedBox(width: 20,)
        ],
      ),
      drawer: const DrawerWidget(),
      body: const Column(),
    );
  }
}