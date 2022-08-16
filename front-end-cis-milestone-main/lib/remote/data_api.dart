// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    required this.personId,
    required this.nik,
    required this.fullName,
    required this.gender,
    required this.address,
    required this.statusPernikahan,
  });

  int personId;
  String nik;
  String fullName;
  String gender;
  String address;
  String statusPernikahan;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        personId: json["personId"],
        nik: json["nik"],
        fullName: json["fullName"],
        gender: json["gender"],
        address: json["address"],
        statusPernikahan: json["statusPernikahan"],
      );

  Map<String, dynamic> toJson() => {
        "personId": personId,
        "nik": nik,
        "fullName": fullName,
        "gender": gender,
        "address": address,
        "statusPernikahan": statusPernikahan,
      };
}
