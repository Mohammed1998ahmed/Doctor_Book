class Login {
  String? message;
  Data? data;
  bool? status;
  int? code;

  Login({this.message, this.data, this.status, this.code});

  Login.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    status = json['status'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['status'] = this.status;
    data['code'] = this.code;
    return data;
  }
}

class Data {
  String? token;
  String? username;

  Data({this.token, this.username});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['username'] = this.username;
    return data;
  }
}
