part of 'stadium_cubit.dart';

@immutable
abstract class StadiumState {}

class StadiumInitial extends StadiumState {}

class GetAllStadiumLoadingState extends StadiumState {}

class GetAllStadiumSuccessState extends StadiumState {}

class GetAllStadiumErrorState extends StadiumState {}

class GetStadiumDetailLoadingState extends StadiumState {}

class GetStadiumDetailSuccessState extends StadiumState {}

class GetStadiumDetailErrorState extends StadiumState {}

class GetNearStadiumLoadingState extends StadiumState {}

class GetNearStadiumSuccessState extends StadiumState {}

class GetNearStadiumErrorState extends StadiumState {}

class GetBannersLoadingState extends StadiumState {}

class GetBannersSuccessState extends StadiumState {}

class GetBannersErrorState extends StadiumState {}


class SearchStadiumLoadingState extends StadiumState {}

class SearchStadiumSuccessState extends StadiumState {}

class SearchStadiumErrorState extends StadiumState {}
