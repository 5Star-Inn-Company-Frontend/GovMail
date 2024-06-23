import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  CustomBottomNavBar({super.key, required this.selectedIndex, required this.onItemTapped});

  bool messagesUnopened = false; 

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: messagesUnopened != false ? const Icon(Icons.message) : Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.message),
              Container(
                width: 30,
                height: 18,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10)
                ),
                constraints: const BoxConstraints(
                  minWidth: 20,
                  minHeight: 20,
                ),
                child: const Center(child: Text('12+', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)),
              )
            ],
          ), 
          label: 'All Messages',
        ),

        BottomNavigationBarItem(
          icon: messagesUnopened != false ? const Icon(Icons.mark_email_read_outlined) : Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.mark_email_read_outlined),
              Container(
                width: 30,
                height: 18,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10)
                ),
                constraints: const BoxConstraints(
                  minWidth: 20,
                  minHeight: 20,
                ),
                child: const Center(child: Text('12+', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)),
              )
            ],
          ), 
          label: 'Read Messages',
        ),


        BottomNavigationBarItem(
          icon: messagesUnopened != false ? const Icon(Icons.mark_email_unread_outlined) : Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.mark_email_unread_outlined),
              Container(
                width: 30,
                height: 18,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10)
                ),
                constraints: const BoxConstraints(
                  minWidth: 20,
                  minHeight: 20,
                ),
                child: const Center(child: Text('12+', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)),
              )
            ],
          ), 
          label: 'Unread Messages',
        ),

        BottomNavigationBarItem(
          icon: messagesUnopened != false ? const Icon(Icons.notifications_none_outlined) : Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.notifications_none_outlined),
              Container(
                width: 30,
                height: 18,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10)
                ),
                constraints: const BoxConstraints(
                  minWidth: 20,
                  minHeight: 20,
                ),
                child: const Center(child: Text('12+', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)),
              )
            ],
          ), 
          label: 'Circular',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.green,
      onTap: onItemTapped,
    );
  }
}