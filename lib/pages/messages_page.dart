import 'package:flutter/material.dart';
import 'package:govmail/widget/drawer.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> with SingleTickerProviderStateMixin{
  bool messagesUnopened = false;

  int _selectedTab = 0;

  final List _pages = [
    
// =======================All Messages Section======================
    Flexible(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context,  index) {
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(0),
            height: 130,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 60,
                  height: 60,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text('E', style: TextStyle(color: Colors.white, fontSize: 30),)
                  ),
                ),

                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Sender Name', style: TextStyle(color: Colors.grey[800], fontSize: 18),),
                      Text('Subject goes here', style: TextStyle(color: Colors.grey[600], fontSize: 15),),
                      Text('Norem ipsum dolor ', style: TextStyle(color: Colors.grey[600], fontSize: 15),),
                    ],),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Mar 1', style: TextStyle(color: Colors.grey[600], fontSize: 15),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.star_border, color: Colors.grey[600]))
                    ],
                  ),
                )

                
              ],
            ),
          );
        }
      ),
    ),

    // =======================Read Messages Section======================
    Flexible(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context,  index) {
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(0),
            height: 130,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 60,
                  height: 60,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text('E', style: TextStyle(color: Colors.white, fontSize: 30),)
                  ),
                ),

                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Sender Name', style: TextStyle(color: Colors.grey[800], fontSize: 18),),
                      Text('Subject goes here', style: TextStyle(color: Colors.grey[600], fontSize: 15),),
                      Text('Norem ipsum dolor ', style: TextStyle(color: Colors.grey[600], fontSize: 15),),
                    ],),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Mar 1', style: TextStyle(color: Colors.grey[600], fontSize: 15),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.star_border, color: Colors.grey[600]))
                    ],
                  ),
                )

                
              ],
            ),
          );
        }
      ),
    ),


    // =======================Unread Messages Section======================
    Flexible(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (BuildContext context,  index) {
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(0),
            height: 130,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 60,
                  height: 60,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text('E', style: TextStyle(color: Colors.white, fontSize: 30),)
                  ),
                ),

                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Sender Name', style: TextStyle(color: Colors.grey[800], fontSize: 18),),
                      Text('Subject goes here', style: TextStyle(color: Colors.grey[600], fontSize: 15),),
                      Text('Norem ipsum dolor ', style: TextStyle(color: Colors.grey[600], fontSize: 15),),
                    ],),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Mar 1', style: TextStyle(color: Colors.grey[600], fontSize: 15),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.star_border, color: Colors.grey[600]))
                    ],
                  ),
                )

                
              ],
            ),
          );
        }
      ),
    ),


    // =======================Circular Section======================
    Flexible(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context,  index) {
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(0),
            height: 130,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 60,
                  height: 60,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text('E', style: TextStyle(color: Colors.white, fontSize: 30),)
                  ),
                ),

                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Sender Name', style: TextStyle(color: Colors.grey[800], fontSize: 18),),
                      Text('Subject goes here', style: TextStyle(color: Colors.grey[600], fontSize: 15),),
                      Text('Norem ipsum dolor ', style: TextStyle(color: Colors.grey[600], fontSize: 15),),
                    ],),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Mar 1', style: TextStyle(color: Colors.grey[600], fontSize: 15),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.star_border, color: Colors.grey[600]))
                    ],
                  ),
                )

                
              ],
            ),
          );
        }
      ),
    ),

  ];

  final List pageTitle = [
    "All Messages",
    "Read Messages",
    "Unread Messages",
    "Circular"
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  late final TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle[_selectedTab], style: const TextStyle(fontSize: 25),),
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
      
      bottomNavigationBar: TabBar(
        controller: controller,
        unselectedLabelColor: Colors.grey,
        labelColor: const Color.fromARGB(255, 32, 133, 36),
        onTap: (index) {_changeTab(index);},
        tabs: [
          Tab(
            icon: messagesUnopened != false ? const Icon(Icons.message) : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.message),
                Container(
                  width: 30,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(child: Text('12+', style: TextStyle(color: Colors.white),)),
                )
              ],
            ), 
            text: 'All Messages'
          ),
          
          Tab(
            icon: messagesUnopened != false ? const Icon(Icons.message) : Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.mark_email_read),
                Container(
                  width: 30,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(child: Text('12+', style: TextStyle(color: Colors.white),)),
                )
              ],
            ), 
            text: 'Read Messages'
          ),

          Tab(
            icon: messagesUnopened != false ? const Icon(Icons.message) : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.mark_email_unread),
                Container(
                  width: 30,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(child: Text('12+', style: TextStyle(color: Colors.white),)),
                )
              ],
            ), 
            text: 'Unread Messages'
          ),

          Tab(
            icon: messagesUnopened != false ? const Icon(Icons.message) : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.circle),
                Container(
                  width: 30,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(child: Text('12+', style: TextStyle(color: Colors.white),)),
                )
              ],
            ), 
            text: 'Circular'
          ),
        ],
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
        
            _pages[_selectedTab]
          ],
        ),
      ),

      
    );
  }
}