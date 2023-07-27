class GetAllStadiumModel {
  List<Data>? data;

  GetAllStadiumModel({this.data});

  GetAllStadiumModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }
}

class Data {
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

  Data(
      {this.id,
      this.title,
      this.city,
      this.state,
      this.lat,
      this.lang,
      this.priceHourly,
      this.rate,
      this.image});

  Data.fromJson(Map<String, dynamic> json) {
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
