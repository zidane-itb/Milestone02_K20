import 'package:cis/remote/data_api.dart';
import 'package:http/http.dart' as http;
import 'dart:math';
import 'dart:io';
import 'dart:convert';

class RemoteApi {
  Future<Data?> getData() async {
    var num = Random().nextInt(8);
    int nik = (2002001 + num);
    var client = http.Client();

    Map nama = {'nik': '2002001'};

    var id = json.encode(nama);

    var uri = Uri.parse("http://localhost:8080/person");

    var response = await http.post(uri, body: id);

    print(response.statusCode);

    if (response.statusCode == 200) {
      var json = response.body;
      return dataFromJson(json);
    }
  }
}

// debug
Future<void> main() async {
  print("a");
  var daa = await RemoteApi().getData();
  print(daa);
  int index = 0;
  // if (daa != null) {
  //   print("yes");
  // } else {
  //   print('Data is null');
  // }
}
