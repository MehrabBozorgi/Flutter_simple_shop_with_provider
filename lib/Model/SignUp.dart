class SignUp {
  String name;
  String email;
  String mobile;
  String password;

  SignUp({
    this.name,
    this.email,
    this.mobile,
    this.password,
  });


  factory SignUp.fromJson(Map<String,dynamic>json)
  {

    return SignUp(

      name: json['name'],
      email: json['email'],
      mobile: json['mobile'],
      password: json['password'],

    );

  }
}
