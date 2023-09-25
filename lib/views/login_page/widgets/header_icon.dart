import 'package:flutter/material.dart';

class HeaderIcon extends StatelessWidget {
  const HeaderIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 189,
      width: 171,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/dirbbox_icon.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
