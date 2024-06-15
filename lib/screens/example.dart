// import 'package:blogd/screens/designscreen.dart';
// import 'package:blogd/screens/foryouscreen.dart';
// import 'package:blogd/screens/productivityscreen.dart';
// import 'package:blogd/screens/self_improvement_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class Example extends StatefulWidget {
//   const Example({super.key});

//   @override
//   State<Example> createState() => _ExampleState();
// }

// class _ExampleState extends State<Example> {
//   final TextEditingController _searchController = TextEditingController();
//   int currentTabIndex = 0;

//   final List<Widget> _bottomNavScreens = [
//     HomeTabScreen(),
//     Center(child: Text('Business Screen')),
//     Center(child: Text('School Screen')),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       currentTabIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 226, 224, 224),
//       body: SafeArea(
//         child: _bottomNavScreens[currentTabIndex],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Business',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'School',
//           ),
//         ],
//         currentIndex: currentTabIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

// class HomeTabScreen extends StatefulWidget {
//   @override
//   _HomeTabScreenState createState() => _HomeTabScreenState();
// }

// class _HomeTabScreenState extends State<HomeTabScreen> {
//   int currentTabIndex = 0;

//   final List<String> tabs = ['For You', 'Self Improvement', 'Productivity', 'Design'];
//   final List<Widget> screens = [
//     const ForYouScreen(),
//     const SelfImprovementScreen(),
//     const ProductivityScreen(),
//     const DesignScreen(),
//   ];

//   double changePositionedOfLine() {
//     switch (currentTabIndex) {
//       case 0:
//         return 0;
//       case 1:
//         return 78;
//       case 2:
//         return 205;
//       case 3:
//         return 300;
//       default:
//         return 0;
//     }
//   }

//   double changeContainerWidth() {
//     switch (currentTabIndex) {
//       case 0:
//         return 50;
//       case 1:
//         return 120;
//       case 2:
//         return 90;
//       case 3:
//         return 100;
//       default:
//         return 0;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     var _searchController;
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//       child: Column(
//         children: [
//           const SizedBox(height: 50),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 5),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Image.asset('assets/images/Vector (1).png'),
//                 Image.asset('assets/images/Notification.png'),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(5),
//                 height: 50,
//                 width: MediaQuery.of(context).size.width / 1.5,
//                 decoration: BoxDecoration(
//                   color: Colors.grey[200],
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 child: TextFormField(
//                   controller: _searchController,
//                   decoration: const InputDecoration(
//                     suffixIcon: ImageIcon(
//                       AssetImage('assets/images/Search.png'),
//                       size: 50,
//                       color: Colors.black26,
//                     ),
//                     border: InputBorder.none,
//                     label: Text(
//                       'Search',
//                       style: TextStyle(color: Colors.black26, fontSize: 16),
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 height: 50,
//                 width: MediaQuery.of(context).size.width / 6,
//                 decoration: BoxDecoration(
//                   color: Colors.grey[200],
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Image.asset(
//                   'assets/images/Filter.png',
//                   color: Colors.black26,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 20),
//           Container(
//             margin: const EdgeInsets.only(top: 15),
//             height: size.height * 0.05,
//             child: Stack(
//               children: [
//                 Positioned(
//                   top: 0,
//                   left: 0,
//                   right: 0,
//                   child: SizedBox(
//                     width: size.width,
//                     height: size.height * 0.04,
//                     child: ListView.builder(
//                       physics: const BouncingScrollPhysics(),
//                       scrollDirection: Axis.horizontal,
//                       itemCount: tabs.length,
//                       itemBuilder: (context, index) {
//                         return Padding(
//                           padding: EdgeInsets.only(left: index == 0 ? 10 : 23, top: 7),
//                           child: GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 currentTabIndex = index;
//                               });
//                             },
//                             child: Text(
//                               tabs[index],
//                               style: TextStyle(
//                                 fontSize: currentTabIndex == index ? 16 : 14,
//                                 fontWeight: currentTabIndex == index ? FontWeight.w400 : FontWeight.w300,
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//                 AnimatedPositioned(
//                   curve: Curves.fastLinearToSlowEaseIn,
//                   bottom: 0,
//                   left: changePositionedOfLine(),
//                   duration: const Duration(milliseconds: 500),
//                   child: AnimatedContainer(
//                     margin: const EdgeInsets.only(left: 10),
//                     width: changeContainerWidth(),
//                     height: size.height * 0.004,
//                     decoration: BoxDecoration(
//                       color: Colors.black87,
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     duration: const Duration(milliseconds: 1000),
//                     curve: Curves.fastLinearToSlowEaseIn,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           Expanded(
//             child: screens[currentTabIndex],
//           ),
//         ],
//       ),
//     );
//   }
// }
