class GetStadiumDetailModel {
  Data? data;

  GetStadiumDetailModel({this.data});

  GetStadiumDetailModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
  }

}

class Data {
  int? id;
  String? title;
  String? city;
  String? state;
  String? priceHourly;
  // ignore: prefer_typing_uninitialized_variables
  var rate;
  String? image;
  List<Time>? time;

  Data(
      {this.id,
      this.title,
      this.city,
      this.state,
      this.priceHourly,
      this.rate,
      this.image,
      this.time});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    city = json['city'];
    state = json['state'];
    priceHourly = json['price_hourly'];
    rate = json['rate'];
    image = json['image'];
    if (json['time'] != null) {
      time = <Time>[];
      json['time'].forEach((v) {
        time!.add( Time.fromJson(v));
      });
    }
  }

}

class Time {
  int? id;
  String? day;
  String? from;
  String? to;
  bool? bookedR;
  bool? bookedCH;

  Time({this.id, this.day, this.from, this.to, this.bookedR, this.bookedCH});

  Time.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    day = json['day'];
    from = json['from'];
    to = json['to'];
    bookedR = json['booked-R'];
    bookedCH = json['booked-CH'];
  }

}