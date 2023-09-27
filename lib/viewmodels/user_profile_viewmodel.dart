import 'package:dirbbox/models/user_profile.dart';
import 'package:flutter/material.dart';

class UserProfileViewModel extends ChangeNotifier {
  List<UserProfile> userProfile = [
    UserProfile(
        id: 1,
        avatar: 'assets/images/profile_icon.png',
        firstName: 'Neelesh',
        lastName: 'Chaudhary',
        address: 'Seattle,Washington',
        job: 'UI / UX  Designer',
        introduction:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.'),
  ];
}
