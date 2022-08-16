import 'package:cis/remote/data_api.dart';
import 'package:http/http.dart' as http;
import 'dart:math';

class RemoteApi {
  getData() async {
    var num = Random().nextInt(8);
    int nik = 2002001 + num;
    var client = http.Client();

    var uri = Uri.parse('http://localhost:8080/person');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return dataFromJson(json);
    }
  }
}
