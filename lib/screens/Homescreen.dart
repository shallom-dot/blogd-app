import 'package:blogd/utils/tabbarview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _searchController = TextEditingController();
  List tabs = [
      'For You' , 'Self Improvement' , 'Productivity' , 'Design'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 226, 224, 224),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                       // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/images/Vector (1).png'),
                                Image.asset('assets/images/Notification.png'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    height: 50,
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(5),
                                      // boxShadow: [
                                      //   BoxShadow(
                                      //     color: Colors.black12.withOpacity(0.05),
                                      //     blurRadius: 2,
                                      //     spreadRadius: 1,
                                      //   )
                                      // ]
                                    ),
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          suffixIcon: ImageIcon(
                                            AssetImage(
                                                'assets/images/Search.png'),
                                            size: 50,
                                            color: Colors.black26,
                                          ),
                                          border: InputBorder.none,
                                          label: Text(
                                            'Search',
                                            style: TextStyle(
                                                color: Colors.black26,
                                                fontSize: 16),
                                          )),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width / 6,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10),
                                      //  boxShadow: [
                                      //       BoxShadow(
                                      //         color: Colors.black12.withOpacity(0.05),
                                      //         blurRadius: 2,
                                      //         spreadRadius: 1,
                                      //       )
                                      //     ]
                                    ),
                                    child: Image.asset(
                                      'assets/images/Filter.png',
                                      color: Colors.black26,
                                    ),
                                  )
                                ]),
                          ),
                              const SizedBox(
                                height: 20,
                              ),
                 MyTabView()
                               
                        
                         ])
                        ))));
  }
}
