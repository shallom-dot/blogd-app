import 'package:blogd/utils/cards.dart';
import 'package:flutter/material.dart';

class ForYouScreen extends StatelessWidget {
  const ForYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MyCards(
            title: 'Please Start Writing Better Git Comments',
             url: 'assets/images/Ellipse 1.png', 
             author: 'Travis Aron Wagwer',
              date: 'July 2024',
               minutes: '4mins read',
                content: 'Lorem Ipsum is simply dummy text of the printing'
                ' and typesetting industry. Lorem Ipsum has been the industry'
               ' s standard dummy text ever since the 1500s, when an unknown'
                 'printer took a galley of type and scrambled it to make a type'
                 ' specimen book.'''''''''),
                 SizedBox(height: 20,),
                 MyCards(
            title: 'About Criticism',
             url: 'assets/images/Ellipse 1.png', 
             author: 'Alex Lohr',
              date: 'July 2024',
               minutes: '3mins read',
                content: 'Lorem Ipsum is simply dummy text of the printing'
                ' and typesetting industry. Lorem Ipsum has been the industry'
               ' s standard dummy text ever since the 1500s, when an unknown'
                 'printer took a galley of type and scrambled it to make a type'
                 ' specimen book.'''''''''),
                  SizedBox(height: 20,),
                 MyCards(
            title: 'Best Code Review Practices',
             url: 'assets/images/Ellipse 1.png', 
             author: 'Robert DeNiro',
              date: 'July 2024',
               minutes: '10mins read',
                content: 'Lorem Ipsum is simply dummy text of the printing'
                ' and typesetting industry. Lorem Ipsum has been the industry'
               ' s standard dummy text ever since the 1500s, when an unknown'
                 'printer took a galley of type and scrambled it to make a type'
                 ' specimen book.'''''''''),
        ]
      ),
    );
  }
}