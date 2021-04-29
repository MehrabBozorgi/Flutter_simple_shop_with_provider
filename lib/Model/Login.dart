class Login{

  String username;
  String password;

  Login({
    this.username,
    this.password,
  });


  factory Login.fromJson(Map<String,dynamic>json)
  {

    return Login(

      username: json['username'],
      password: json['password'],

    );

  }



}