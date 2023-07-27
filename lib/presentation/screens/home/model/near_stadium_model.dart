class NearStadiumModel {
  List<Stadiums>? stadiums;

  NearStadiumModel({this.stadiums});

  NearStadiumModel.fromJson(Map<String, dynamic> json) {
    if (json['stadiums'] != null) {
      stadiums = <Stadiums>[];
      json['stadiums'].forEach((v) {
        stadiums!.add(Stadiums.fromJson(v));
      });
    }
  }
}

class Stadiums {
  int? id;
  String? title;
  String? city;
  String? state;
  String? lat;
  String? lang;
  String? priceHourly;
  // ignore: prefer_typing_uninitialized_variables
  var rate;
  String? image;

  Stadiums(
      {this.id,
      this.title,
      this.city,
      this.state,
      this.lat,
      this.lang,
      this.priceHourly,
      this.rate,
      this.image});

  Stadiums.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    city = json['city'];
    state = json['state'];
    lat = json['lat'];
    lang = json['lang'];
    priceHourly = json['price_hourly'];
    rate = json['rate'];
    image = json['image'];
  }
}
