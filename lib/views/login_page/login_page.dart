import 'package:dirbbox/views/login_page/widgets/background.dart';
import 'package:dirbbox/views/login_page/widgets/header_icon.dart';
import 'package:dirbbox/views/login_page/widgets/sign_in_button.dart';
import 'package:dirbbox/views/login_page/widgets/smart_id_button.dart';
import 'package:dirbbox/views/login_page/widgets/social_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Background(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 90,
                ),
                const HeaderIcon(),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Welcome to',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
                const Text(
                  'Dirbbox',
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 220,
                  child: Text(
                    "Best cloud storage platform for all business and individuals to manage there data \n\nJoin For Free.",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmartIdButton(
                      onTap: () {},
                    ),
                    SignInButton(
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                const Center(
                  child: Text(
                    'Use Social Login',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialButton(
                      onTap: () {
                        print('Test Button1');
                      },
                      child: Image.asset(
                        'assets/images/ig_logo.png',
                      ),
                    ),
                    SocialButton(
                        onTap: () {
                          print('Test Button2');
                        },
                        child: Image.asset('assets/images/twitter_logo.png')),
                    SocialButton(
                        onTap: () {
                          print('Test Button3');
                        },
                        child: Image.asset('assets/images/fb_logo.png')),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Center(
                    child: GestureDetector(
                  onTap: () {
                    print('Test Create Account');
                  },
                  child: const Text('Create An Account'),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
