import 'package:blogd/utils/profile_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 17, 16, 16),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 35,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    // color: Colors.red
                  ),
                  child: Image.asset('assets/images/Ellipse 5.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'James Anderson',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  '@james_andyy',
                  style: TextStyle(fontSize: 12, color: Colors.white70),
                ),
                const Row(
                  children: [
                    Text(
                      '240',
                      style: TextStyle(fontSize: 15, color: Colors.white70),
                    ),
                    SizedBox(width: 75), // Adjust the width as needed
                    Text(
                      '14',
                      style: TextStyle(fontSize: 15, color: Colors.white70),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      'Followers',
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    ),
                    SizedBox(width: 30), // Adjust the width as needed
                    Text(
                      'Following',
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    ),
                  ],
                )
              ]),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: SizedBox(
                  width: 250,
                  child: Divider(
                    color: Colors.white, // The color of the line
                    height: 10, // The space around the divider
                    thickness: 3, // The thickness of the line
                    //indent: 5, // The start padding of the line
                    endIndent: 5, // The end padding of the line
                  ),
                ),
              ),
              //second column
               Column(
                children: [
                ProfileButtons( myiconn: Image.asset(
                          'assets/images/icons8-add-96.png',
                          height: 30,
                          width: 30,
                          color: Colors.white,
                        ),
                         text: 'Add new article',
                         press: (){}
                         
                ),
                SizedBox(height: 30,),

                 ProfileButtons( myiconn: Image.asset(
                          'assets/images/icons8-document-96.png',
                          height: 30,
                          width: 30,
                          color: Colors.white,
                        ),
                         text: 'Your articles',
                         press: (){}
                         
                ),
                SizedBox(height: 30,),

                 ProfileButtons( myiconn: Image.asset(
                          'assets/images/icons8-graph-report-64.png',
                          height: 30,
                          width: 30,
                          color: Colors.white,
                        ),
                         text: 'Your activity',
                         press: (){}
                         
                ),
                SizedBox(height: 30,),

                 ProfileButtons( myiconn: Image.asset(
                          'assets/images/icons8-ticket-96.png',
                          height: 30,
                          width: 30,
                          color: Colors.white,
                        ),
                         text: 'Your subscriptions',
                         press: (){}
                         
                ),
                SizedBox(height: 30),

                 ProfileButtons( myiconn: Image.asset(
                          'assets/images/icons8-logout-96.png',
                          height: 30,
                          width: 30,
                          color: Colors.white,
                        ),
                         text: 'Log out',
                         press: (){}
                         
                ),
                        
                ]
              ),
             SizedBox(height: 70,),
          Container(
            // color: Colors.white,
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                   color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset('assets/images/icons8-multiply-48.png'),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
