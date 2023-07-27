class DeleteAccountModel {
  String? message;

  DeleteAccountModel({this.message});

  DeleteAccountModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }
}
