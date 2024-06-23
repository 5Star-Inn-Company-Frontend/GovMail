import 'package:flutter/material.dart';

class ComposeMessageDialog extends StatelessWidget {
  const ComposeMessageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 580,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 75),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Compose Message', style: TextStyle(color: Colors.black, fontSize: 25),),
                          IconButton(
                            onPressed: (){},
                             icon: const Icon(Icons.cancel_outlined)
                          )
                        ],
                      ),
                  
                    ],
                  ),
                ),
              ],
            ),
          ),
      // ),
    );
  }
}