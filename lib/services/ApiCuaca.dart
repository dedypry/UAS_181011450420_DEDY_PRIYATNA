import "dart:convert";

import 'package:uas_dedy_priyatna/model/CuacaModel.dart';
import "package:http/http.dart" as http;

class ApiCuaca {
  static Future getCuaca(nama) async {
    var url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=${nama}&appid=041bc27ac6d0be8ec35077083bcd6f06");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      return CuacaModel.fromJson(json);
    } else {
      return Future.error(
          Exception("Request failed with status: ${response.statusCode}."));
    }
  }
}
