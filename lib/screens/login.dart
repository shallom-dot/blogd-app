import 'package:blogd/screens/register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()));
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Color(0xFFDB3022),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
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
                    // Add your onPressed code here
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't Have an Account? ",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        )),
                    TextButton(
                        onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Color(0xFFDB3022),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )),
                  ],
                ),
                const SizedBox(height: 10),
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
                    // Add your onPressed code here
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/icons8-google-48.png', // Path to your Google logo
                        height: 24.0,
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        'Sign in with Google',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
