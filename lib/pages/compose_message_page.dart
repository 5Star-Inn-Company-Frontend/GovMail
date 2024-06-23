import 'package:flutter/material.dart';

class ComposeMessagePage extends StatefulWidget {
  const ComposeMessagePage({super.key});

  @override
  State<ComposeMessagePage> createState() => _ComposeMessagePageState();
}

class _ComposeMessagePageState extends State<ComposeMessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compose Message', style: TextStyle(color: Colors.black, fontSize: 25),),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_rounded)),
      ),

      body: Padding(padding: const EdgeInsets.all(8), 
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.expand_circle_down_outlined)),

                    const Text('New Message', style: TextStyle(fontSize: 18),)
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(onTap: () {}, child: const Icon(Icons.contact_page_outlined)),
                    const SizedBox(width: 5,),

                    InkWell(onTap: () {}, child: const Icon((Icons.more_vert_outlined))),
                    const SizedBox(width: 5,),

                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.green[800],
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Center(child: Text('Send', style: TextStyle(color: Colors.white, fontSize: 18)))
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('To', style: TextStyle(color: Colors.grey[900], fontSize: 17),),

                    const SizedBox(width: 20,),

                    Container(
                      height: 45,
                      width: 160,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green[900],    
                            child: const Text('E', style: TextStyle(color: Colors.white, fontSize: 17),),
                          ),
                          const Text('Enrique Gram', style: TextStyle(color: Colors.black, fontSize: 17)),
                        ],
                      )
                    ),
                  ],
                ),
                
                
                Row(children: [
                  const Text('Cc', style: TextStyle(color: Colors.black, fontSize: 18)),
                  const SizedBox(width: 5,),

                  const Text('Bcc', style: TextStyle(color: Colors.black, fontSize: 18)),
                  const SizedBox(width: 5,),

                  InkWell(onTap: () {}, child: const Icon((Icons.add))),                
                ],)
                
              ],
            ),


            const Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('From', style: TextStyle(color: Colors.grey[900], fontSize: 17),),

                    const SizedBox(width: 20,),

                    Container(
                      height: 45,
                      width: 210,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green[900],    
                            child: const Text('E', style: TextStyle(color: Colors.white, fontSize: 17),),
                          ),
                          const Text('muzopro@gmail.com', style: TextStyle(color: Colors.black, fontSize: 15)),
                        ],
                      )
                    ),
                  ],
                ),
                
                InkWell(onTap: () {}, child: const Icon((Icons.keyboard_arrow_down_rounded)))
                
              ],
            ),

            const Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Subject', style: TextStyle(color: Colors.grey[900], fontSize: 17),),

                    const SizedBox(width: 20,),

                    const Text('Articles about flat Earth theory.', style: TextStyle(color: Colors.black, fontSize: 17),),
                  ],
                ),
                
                InkWell(onTap: () {}, child: const Icon((Icons.cancel_outlined)))
                
              ],
            ),
            const SizedBox(height: 10,),

            const Divider(),
          ],
        )
      ),
    );
  }
}