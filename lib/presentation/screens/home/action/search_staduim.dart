// import 'package:api_request/api_request.dart';
// import 'package:mal3ab/core/network/end_points.dart';

// import '../model/search_stadium_model.dart';


// class SearchStadiumActions extends ApiRequestAction<SearchStadiumModel> {
//   final String name;

//   SearchStadiumActions({
//     required this.name,
//   });
//   @override
//   RequestMethod get method => RequestMethod.GET;

//   @override
//   String get path => '${EndPoint.searchStadium}?name=$name';

//   @override
//   bool get authRequired => true;

//   @override
//   ResponseBuilder<SearchStadiumModel> get responseBuilder =>
//       (json) => SearchStadiumModel.fromJson(json);
// }
