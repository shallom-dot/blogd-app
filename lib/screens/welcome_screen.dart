import 'package:blogd/screens/login.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 226, 224, 224),
        body: SafeArea(
          child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                // logo

                Column(
                  children: [
                    RichText(
                        text: const TextSpan(
                            text: 'BLOGD',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 45,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'LibreFranklin'),
                            children: <TextSpan>[
                          TextSpan(
                            text: '.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(237, 192, 3, 3)),
                          ),
                        ])),
                    const Text('Personal Blogging Partner'),
                  ],
                ),

                //Tell your story
                const SizedBox(
                  height: 20,
                ),

                Container(
                  height: 350,
                  width: 350,
                  child: Stack(children: <Widget>[
                    // Background image
                    Image.asset(
                      'assets/images/Ellipse 1.png',
                      fit: BoxFit.cover,
                    ),
                    Center(
                      child: RichText(
                        text: const TextSpan(
                            text: 'Tell your ',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 33,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'LibreFranklin'),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'story ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              ),
                              TextSpan(
                                text: 'with us',
                              ),
                            ]),
                      ),
                    ),
                  ]),
                ),

                //Login button
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                              color: Colors.black,
                              width: 1), // Border color and width
                        ),
                        backgroundColor:
                            const Color.fromARGB(255, 226, 224, 224),
                        foregroundColor: const Color(0xff263238),
                        minimumSize: const Size(250, 50),
                        elevation: 0,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Login'),
                      ),
                    ),
                    //Text here
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('New here?'),

                    //Register button
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(250, 50),
                        elevation: 0,
                      ),
                      onPressed: () {},
                      child: const Text('Register'),
                    ),
                  ],
                )
              ])),
        ));
  }
}
