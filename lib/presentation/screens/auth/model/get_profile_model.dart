class GetProfileModel {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? password;
  String? city;
  List<String>? colors;
  String? place;
  String? image;

  GetProfileModel(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.password,
      this.city,
      this.colors,
      this.place,
      this.image});

  GetProfileModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];

    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
    city = json['city'];
    colors = json['colors'].cast<String>();
    place = json['place'];
    image = json['image'];
  }
}
