class User {
  int id;
  final String email;
  final String userName;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String profile;
  final String password; //Only Local

  User({
    this.id,
    this.email,
    this.userName,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.profile,
    this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['user']['id'] as int,
      userName: json['user']['username'] as String,
      email: json['user']['email'] as String,
      firstName: json['user']['first_name'] as String,
      lastName: json['user']['last_name'] as String,
      phoneNumber: json['user']['phone_number'] as String,
      profile: json['user']['profile'] as String,
    );
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["id"] = id;
    map["username"] = userName;
    map["email"] = email;
    map["first_name"] = firstName;
    map["last_name"] = lastName;
    map["phone_number"] = phoneNumber;
    map["profile"] = profile;
    return map;
  }

  Map loginMap() {
    var map = new Map<String, dynamic>();
    map["email"] = email;
    map["password"] = password;
    return map;
  }

  static User fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      userName: map['user_name'],
      email: map['email'],
      firstName: map['first_name'],
      lastName: map['last_name'],
      phoneNumber: map['phone_number'],
      profile: map['profile'],
    );
  }
}
