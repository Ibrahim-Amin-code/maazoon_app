class LoginModel {
  String? accessToken;
  User? user;
  String? image;

  LoginModel({this.accessToken, this.user, this.image});

  LoginModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    image = json['image'];
  }
}

class User {
  int? id;
  String? name;
  String? email;
  String? city;
  String? createdAt;
  String? phone;
  List<String>? colors;
  String? place;

  User(
      {this.id,
      this.name,
      this.email,
      this.city,
      this.createdAt,
      this.phone,
      this.colors,
      this.place});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    city = json['city'];
    createdAt = json['created_at'];
    phone = json['phone'];
    colors = json['colors'].cast<String>();
    place = json['place'];
  }
}
