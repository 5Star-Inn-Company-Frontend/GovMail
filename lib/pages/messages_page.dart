import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:govmail/pages/compose_message_page.dart';
import 'package:govmail/pages/sentmessages_page.dart';
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

  final List pageTitle = [
    "All Messages",
    "Read Messages",
    "Unread Messages",
    "Circular"
  ];

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
      // barrierColor: Colors.black.withOpacity(0.4),
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (BuildContext buildContext, Animation animation, Animation secondaryAnimation) {
        return Scaffold(
          backgroundColor: Colors.black.withOpacity(0.6),
          body: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 500,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Compose Message', style: TextStyle(color: Colors.black, fontSize: 25),),
                      IconButton(
                        onPressed: (){Navigator.pop(context);},
                          icon: const Icon(Icons.cancel_outlined, size: 35)
                      )
                    ],
                  ),
          
                  const SizedBox(height: 35),
          
                  SizedBox(
                    height: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
          
                        GestureDetector(
                          // behavior: HitTestBehavior.translucent, 
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ComposeMessagePage()
                              )
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row( 
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.green),
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: const Center(child: Icon(Icons.send, color: Colors.green, size: 30)),
                                  ),
                          
                                  const SizedBox(width: 20,),
                          
                                  const Text('Message', style: TextStyle(color: Colors.black, fontSize: 17)),
                                ],
                              ),
                              
                          
                              const Icon((Icons.arrow_forward_ios_rounded))
                              
                            ],
                          ),
                        ),
                    
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.yellow),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: const Center(child: Icon(Icons.people, color: Colors.yellow, size: 30)),
                                ),
                        
                                const SizedBox(width: 20,),
                        
                                const Text('Circular', style: TextStyle(color: Colors.black, fontSize: 17)),
                              ],
                            ),
                            
                        
                            const Icon((Icons.arrow_forward_ios_rounded))
                            
                          ],
                        ),
                    
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.orange),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: const Center(child: Icon(Icons.broadcast_on_home, color: Colors.orange, size: 30)),
                                ),
                        
                                const SizedBox(width: 20,),
                        
                                const Text('Broadcast', style: TextStyle(color: Colors.black, fontSize: 17)),
                              ],
                            ),
                            
                        
                            const Icon((Icons.arrow_forward_ios_rounded))
                            
                          ],
                        ),
                      ],
                    ),
                  ),
          
              
                ],
              ),
            ),
          ),
        );
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


