import 'package:flutter/material.dart';
import 'package:govmail/dialog/compose_message_dialog.dart';
import 'package:govmail/pages/tabs/allmessages.dart';
import 'package:govmail/pages/tabs/circularmessages.dart';
import 'package:govmail/pages/tabs/readmessages.dart';
import 'package:govmail/pages/tabs/unreadmessages.dart';
import 'package:govmail/widget/bottom_nav_bar.dart';
import 'package:govmail/widget/drawer.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> with SingleTickerProviderStateMixin{
  int _selectedTab = 0;

// messages page title
  final List pageTitle = [
    "All Messages",
    "Read Messages",
    "Unread Messages",
    "Circular"
  ];

// list of message pages
  static const List<Widget> _widgetOptions = <Widget>[
    AllMessagesTab(),
    ReadMessagesTab(),
    UnreadMessagesTab(),
    CircularTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedTab = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( pageTitle[_selectedTab], style: const TextStyle(fontSize: 25),),
        centerTitle: true,
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.green,    
            child: Text('AJ', style: TextStyle(color: Colors.white),),
          ),
          SizedBox(width: 20,)
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.white,
        onPressed: () {composeMessageDialog();},
        label: Row(
          children: [
            Text('Compose', style: TextStyle(color: Colors.green[700], fontSize: 20)),
            Icon(Icons.keyboard_arrow_down_rounded, color: Colors.green[700], size: 40)
          ],
        ), icon: Icon(Icons.edit_outlined, color: Colors.green[700], size: 30)
      ),

      drawer: const DrawerWidget(),
      
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedTab,
        onItemTapped: _onItemTapped,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchBar(
              leading: const Icon(Icons.search),
              hintText: 'Search Mail', 
              elevation: const MaterialStatePropertyAll(0),
              backgroundColor: MaterialStatePropertyAll(Colors.grey[100]),
              side: const MaterialStatePropertyAll(BorderSide(color: Colors.grey)),
              padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20)),
            ),

            const SizedBox(height: 10,),
        
            _widgetOptions.elementAt(_selectedTab),

          ],
        ),
      ),
    );
  }


  composeMessageDialog(){
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      transitionDuration: const Duration(milliseconds: 700),
      pageBuilder: (BuildContext buildContext, Animation animation, Animation secondaryAnimation) {
        return const ComposeMessageDialog();      
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1),
            end: const Offset(0, 0),
          ).animate(animation),
          child: child,
        );
      },
    );
  }

}


