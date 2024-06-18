import 'package:flutter/material.dart';
import 'package:govmail/widget/drawer.dart';

class FlaggedMessagesPage extends StatefulWidget {
  const FlaggedMessagesPage({super.key});

  @override
  State<FlaggedMessagesPage> createState() => _FlaggedMessagesPageState();
}

class _FlaggedMessagesPageState extends State<FlaggedMessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flagged', style: TextStyle(fontSize: 25),),
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