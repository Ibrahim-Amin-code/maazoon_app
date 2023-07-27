class EndPoint {
  static String register = '/register';
  static String login = '/login';
  static String logout = '/logout';
  static String deleteAccount = '/deleteaccount';
  /////////////////////////////////////////////////////
  static String getProfile = '/profile';
  static String updateProfile = '/updateProfile';
  //////////////////////////////////////////////////////
  static String getAllStadium = '/v1/stadia';
  static String getStadiumDetail = '/v1/stadium-time';
  static String nearStadium = '/near-stadium';///api/search-stadium
  static String searchStadium = '/search-stadium';///api
  static String getBanners = '/v1/banners';//{{mal3ab}}/api


  /////////////////////////////////////////////////////////
  static String storeReservations = '/v1/reservations';
  static String allReservation = '/v1/reservations';
  static String editReservaton = "/v1/update-reservation/";
  static String deleteReservaton = "/v1/reservations/";
//////////////////////////////////////////////////////////
  static String storeChallenges = '/v1/challenges';
  static String myChallenges = '/v1/challenges';
  static String allChallenges = '/v1/All-Challenges';
  static String deleteChallenge = '/v1/challenges/';
  static String editChallenge = '/v1/update-challenge/';
  static String storeRequest = '/v1/request-challenges';
  static String myRequests = '/v1/my-request';
  static String rejectRequest = '/v1/request-challenges/';
  static String acceptRequest = '/v1/Accept-request/';

/////////////////////////////////////////////////////////////
  static String allLeagues = '/v1/leagues';
  static String singleLeague = '/v1/leagues/';
  static String joinLeague = '/v1/update-league/'; // v1/match-league/22
  static String matches = '/v1/match-league/';

  ///api/near-stadium

}
