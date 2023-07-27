// import 'package:api_request/api_request.dart';
// import 'package:mal3ab/core/network/end_points.dart';
// import '../model/login_model.dart';

// class LoginActions extends ApiRequestAction<LoginModel> {
//   final String phone;
//   final String password;
//   LoginActions({
//     required this.phone,
//     required this.password,
//   });
//   @override
//   RequestMethod get method => RequestMethod.POST;
//   // @override
//   // ContentDataType? get contentDataType => ContentDataType.formData;
//   @override
//   Map<String, dynamic> get toMap => {
//         "phone": phone,
//         "password": password,
//       };
//   @override
//   String get path => EndPoint.login;

//   @override
//   ResponseBuilder<LoginModel> get responseBuilder =>
//       (json) => LoginModel.fromJson(json);
// }
