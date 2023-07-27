// import 'package:api_request/api_request.dart';
// import 'package:mal3ab/core/network/end_points.dart';

// import '../model/stadium_detail_model.dart';

// class GetStadiumDetailActions extends ApiRequestAction<GetStadiumDetailModel> {
//   final int stadiumId;
//   final String date;

//   GetStadiumDetailActions(this.stadiumId, this.date);
//   @override
//   RequestMethod get method => RequestMethod.GET;

//   @override
//   String get path =>
//       '${EndPoint.getStadiumDetail}?stadium_id=$stadiumId&date=$date';

//   @override
//   bool get authRequired => true;
//   @override
//   ResponseBuilder<GetStadiumDetailModel> get responseBuilder =>
//       (json) => GetStadiumDetailModel.fromJson(json);
// }
