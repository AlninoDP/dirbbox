class UserProfile {
  int id;
  String avatar;
  String firstName;
  String lastName;
  String address;
  String job;
  String introduction;
  bool isPro = false;

  UserProfile(
      {required this.id,
      required this.avatar,
      required this.firstName,
      required this.lastName,
      required this.address,
      required this.job,
      required this.introduction});
}
