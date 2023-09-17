import 'dart:convert';

import 'package:http/http.dart';

import '../../models/weather_model.dart';

class MainController {
  List<WeatherModel> currencies = [];

  void getApiData() async {
    Response? response;
    try {
      final url = Uri.parse(
          "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/Toshkent?unitGroup=us&key=HX4CGDZRV4UEJURH9Z2ZQ4FUJ&contentType=json");
      response = await get(url);
      print(response.body);
    } catch (e, stacTrace) {
      print("$e\n\n fffffffffffffffffffffff $stacTrace");
    }

    final WeatherModel data =
        WeatherModel.fromJson(jsonDecode(response?.body ?? ""));
    print(data.address);
  }
}
