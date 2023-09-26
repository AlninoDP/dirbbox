import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  final IconData icon;
  const GridButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    bool isActived = false;
    return GestureDetector(
      onTap: () {},
      child: Icon(
        icon,
        color: isActived ? Color(0xff22215B) : Color(0xffB0C0D0),
      ),
    );
  }
}
