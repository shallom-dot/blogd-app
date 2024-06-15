import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  const MyCards(
      {super.key,
      required this.title,
      required this.url,
      required this.author,
      required this.date,
      required this.minutes,
      required this.content});

  final String title;
  final String url;
  final String author;
  final String date;
  final String minutes;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
            color: Colors.white70,
      ) ,
  
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset(url),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(author),
                const SizedBox(
                  width: 13,
                ),
                const Text(
                  '.',
                  style: TextStyle(
                    color: Colors.black12,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 13,
                ),
                Text(date,
                    style: const TextStyle(
                      color: Colors.black12,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  width: 13,
                ),
                const Text(
                  '.',
                  style: TextStyle(
                    color: Colors.black12,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 13,
                ),
                Text(minutes,
                    style: const TextStyle(
                      color: Colors.black12,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
            const Divider(
              color: Colors.black12, // The color of the line
              height: 10, // The space around the divider
              thickness: 2, // The thickness of the line
              indent: 5, // The start padding of the line
              endIndent: 5, // The end padding of the line
            ),
            Text(
              content,
              style: const TextStyle(
                color: Colors.black38,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.black87,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(350, 40),
                  elevation: 0,
                ),
                onPressed: () {},
                child: const Text(
                  'Read more ...',
                  style: TextStyle(
                    color: Colors.white60,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
