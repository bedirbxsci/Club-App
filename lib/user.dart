class User {
  String id;
  String email;
  int gradyear;
  String club;
  String role;
  String password;
  String fname;
  String lname;
  String info;

  User(this.club, this.email, this.password, this.fname, this.lname, this.role,
      this.gradyear, this.id, this.info);
}

class Club {
  String clubId;
  String clubName;
  String clubRoom;
  String day;
  String clubdetails;
  Map<User, bool> attendance;
  List members;
  List announcements;

  Club(this.clubId, this.clubName, this.clubRoom, this.day, this.clubdetails,
      this.attendance, this.members, this.announcements);
}
