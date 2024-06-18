import 'package:flutter/material.dart';
import 'package:govmail/widget/drawer.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Messages', style: TextStyle(fontSize: 25),),
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