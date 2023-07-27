// import 'package:api_request/api_request.dart';
// import 'package:mal3ab/core/network/end_points.dart';

// import '../model/near_stadium_model.dart';

// class GetNearStadiumActions extends ApiRequestAction<NearStadiumModel> {
//   final double latitude;
//   final double longitude;

//   GetNearStadiumActions({required this.latitude, required this.longitude});
//   @override
//   RequestMethod get method => RequestMethod.GET;

//   @override
//   String get path =>
//       '${EndPoint.nearStadium}?latitude=$latitude&longitude=$longitude';

//   @override
//   bool get authRequired => true;

//   @override
//   ResponseBuilder<NearStadiumModel> get responseBuilder =>
//       (json) => NearStadiumModel.fromJson(json);
// }
