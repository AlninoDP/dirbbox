import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Your Dribbox',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color(0xff22215B)),
                ),
                Image.asset('assets/images/four_dots.png'),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 315,
              height: 55,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 18),
                    prefix: Image.asset('assets/images/search_icon.png'),
                    hintText: 'Search Folder',
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Color(0xff22215B),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
