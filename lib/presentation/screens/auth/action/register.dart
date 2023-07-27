// import 'package:api_request/api_request.dart';
// import 'package:flutter/animation.dart';
// import 'package:mal3ab/core/network/end_points.dart';
// import '../model/register_model.dart';

// class RegisterActions extends ApiRequestAction<RegisterModel> {
//   final String phone;
//   final String email;
//   final String name;
//   final String password;
//   final String city;
//   final dynamic image;
//   final String place;
//   final List<Color> colors;

//   RegisterActions(
//       {required this.phone,
//       required this.email,
//       required this.name,
//       required this.image,
//       required this.password,
//       required this.city,
//       required this.colors,
//       required this.place});
//   @override
//   RequestMethod get method => RequestMethod.POST;
//   @override
//   ContentDataType? get contentDataType => ContentDataType.formData;
//   @override
//   Map<String, dynamic> get toMap => {
//         "phone": phone,
//         "password": password,
//         "city": city,
//         "image": image,
//         "name": name,
//         "email": email,
//         "place": place,
//         "colors": colors
//       };
//   @override
//   String get path => EndPoint.register;

//   @override
//   ResponseBuilder<RegisterModel> get responseBuilder =>
//       (json) => RegisterModel.fromJson(json);
// }
