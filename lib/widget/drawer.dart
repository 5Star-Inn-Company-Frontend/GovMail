import 'package:flutter/material.dart';
import 'package:govmail/pages/flaggedmessages_page.dart';
import 'package:govmail/pages/sentmessages_page.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
 Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: double.infinity,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 40,),
          Row(
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: const Icon(Icons.arrow_back)),
              const Text('GovMail', style: TextStyle(fontSize: 25),)
            ],
          ),

          const SizedBox(height: 40,),
          Container(
            padding: const EdgeInsets.only(top:5, bottom: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,    
                child: Text('AJ', style: TextStyle(color: Colors.white),),
              ),
              title: Text('Joseph Olubanjo', style: TextStyle(fontSize: 20, color: Colors.black),),
              subtitle: Text('josepholubanjo@cicod.com'),
              trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey),
            ),
          ),

          const ListTile(
            title: Text('Mail', style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black),
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25)
            ),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.send_outlined, color: Colors.green),
                  title: const Text('Sent', style: TextStyle(fontSize: 18, color: Colors.black),),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey),
                  onTap: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SentMessagesPage()
                      )
                    );
                  }
                ),

                const Divider(),
                
                ListTile(
                  leading: Icon(Icons.keyboard_double_arrow_right_rounded, color: Colors.yellow[600]),
                  title: const Text('Flagged', style: TextStyle(fontSize: 18, color: Colors.black),),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey),
                  onTap: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FlaggedMessagesPage()
                      )
                    );
                  }
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.only(top:5, bottom: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const ListTile(
              leading: Icon(Icons.logout, size: 20, color: Colors.red),
              title: Text('Logout', style: TextStyle(fontSize: 18, color: Colors.black),),
              trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey),
            ),
          ),
          // ListTile(
          //   leading: const Icon(Icons.menu_book_rounded, size: 20),
          //   title: const Text('About Project', 
          //     style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white),
          //   ),
          //   iconColor: Colors.white,
          //   onTap: (){
          //     // Navigator.pushReplacement(
          //     //   context,
          //     //   MaterialPageRoute(
          //     //     builder: (context) => const AboutProject()
          //     //   )
          //     // );
          //   }
          // ),

          
          
          
        ],
      ),
    );
  }
}