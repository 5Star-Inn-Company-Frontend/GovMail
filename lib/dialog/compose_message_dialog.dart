import 'package:flutter/material.dart';
import 'package:govmail/pages/compose_message_page.dart';

class ComposeMessageDialog extends StatelessWidget {
  const ComposeMessageDialog({super.key});

  @override
  Widget build(BuildContext context) {
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
                
                    GestureDetector(
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
                    ),
                
                    GestureDetector(
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
                    ),
                  ],
                ),
              ),
      
          
            ],
          ),
        ),
      ),
    );
  }
}