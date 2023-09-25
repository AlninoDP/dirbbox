import 'package:flutter/material.dart';

class SmartIdButton extends StatelessWidget {
  final VoidCallback onTap;
  const SmartIdButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue.shade50,
        fixedSize: const Size(150, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 26),
      ),
      child: Row(
        children: [
          Image.asset('assets/images/finger_print_icon.png'),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'Smart Id',
            style: TextStyle(fontSize: 16, color: Color(0xff567DF4)),
          )
        ],
      ),
    );
  }
}
