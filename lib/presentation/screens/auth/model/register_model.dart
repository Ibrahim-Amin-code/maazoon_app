class RegisterModel {
  String? accessToken;
  String? name;
  String? email;
  String? phone;
  String? password;
  String? city;
  String? place;
  String? image;

  RegisterModel(
      {this.accessToken,
      this.name,
      this.email,
      this.phone,
      this.password,
      this.city,
      this.place,
      this.image});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
    city = json['city'];
    place = json['place'];
    image = json['image'];
  }
}