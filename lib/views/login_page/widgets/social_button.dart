import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final Function()? onTap;
  final Widget child;
  const SocialButton({super.key, this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: child,
    );
  }
}
