import 'package:dirbbox/viewmodels/user_profile_viewmodel.dart';
import 'package:flutter/material.dart';

class HeaderDrawer extends StatelessWidget {
  final UserProfileViewModel userProfileViewModel;
  const HeaderDrawer({super.key, required this.userProfileViewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 107,
      width: 210,
      padding: const EdgeInsets.fromLTRB(30, 35, 35, 30),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(53.5)),
        color: Color(0xffFFFFFF),
      ),
      child: Row(
        children: [
          Image.asset('assets/images/profile_icon.png'),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userProfileViewModel.userProfile[0].firstName,
                style: const TextStyle(
                    color: Color(0xff1B1D28),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                userProfileViewModel.userProfile[0].address,
                style: const TextStyle(
                    fontSize: 10,
                    color: Color(0xff7B7F9E),
                    fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}
