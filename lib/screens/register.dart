import 'package:blogd/screens/Homescreen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 224, 224),
      body: SafeArea(
        child: Column(children: [
          const SizedBox(
            height: 110,
          ),
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
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                 TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Enter Name',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 15,),
                TextFormField(
                  decoration: const InputDecoration(
                     labelText: 'Enter Email Here',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Enter Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                 const SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 226, 224, 224), // Button background color
                    // Button text color
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8), // Button border radius
                      side: const BorderSide(
                          color: Colors.grey), // Button border color
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70.0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                   ) ),
                  ),
              ]
              )
        )])));
  }
}