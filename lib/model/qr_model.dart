class QrModel {
  int? id;
  int? verificationCode;
  String? type;
  String? desc;

  QrModel({this.id, this.verificationCode, this.type, this.desc});

  QrModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    verificationCode = json['verificationCode'];
    type = json['type'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['verificationCode'] = verificationCode;
    data['type'] = type;
    data['desc'] = desc;
    return data;
  }
}