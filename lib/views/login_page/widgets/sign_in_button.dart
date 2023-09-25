import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final VoidCallback onTap;
  const SignInButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(150, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 26),
        backgroundColor: const Color(0xff567DF4),
      ),
      onPressed: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sign In',
            style: TextStyle(fontSize: 16, color: Color(0xffffffff)),
          ),
          const SizedBox(
            width: 10,
          ),
          Image.asset('assets/images/arrow_right_icon.png')
        ],
      ),
    );
  }
}
