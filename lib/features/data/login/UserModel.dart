class UserModel{


  final int id;
  final String gender;
  final String userName;
  final String email;
  final String? image;
  final String? accessToken;
  final String firstName;
  final String lastName;

  UserModel({
    required this.id,
    required this.email,
    required this.userName,
    required this.gender,
    this.image,
    this.accessToken,
    required this.firstName,
    required this.lastName
  });

  factory UserModel.fromJson(Map<String,dynamic> json){
    return UserModel(
      id: json['id']??"",
      userName: json['username']??"",
      email: json['email']??"",
      image: json['image']??"",
      accessToken: json['token']??"",
      firstName: json['lastName']??"" ,
      lastName: json['firstName']??"",
      gender: json['gender']??""
      );
  }
} 