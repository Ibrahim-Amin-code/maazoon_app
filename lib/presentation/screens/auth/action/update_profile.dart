// import 'package:api_request/api_request.dart';
// import 'package:mal3ab/core/network/end_points.dart';

// import '../model/update_peofile_model.dart';

// class UpdateProfileActions extends ApiRequestAction<UpdateProfileModel> {
//   final String phone;
//   final String email;
//   final String name;
//   final String password;
//   final String city;
//   final dynamic image;
//   final String place;
//   UpdateProfileActions(
//       {required this.phone,
//       required this.email,
//       required this.name,
//       required this.image,
//       required this.password,
//       required this.city,
//       required this.place});

//   @override
//   bool get authRequired => true;
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
//       };
//   @override
//   String get path => EndPoint.updateProfile;

//   @override
//   ResponseBuilder<UpdateProfileModel> get responseBuilder =>
//       (json) => UpdateProfileModel.fromJson(json);
// }
