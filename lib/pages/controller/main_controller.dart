import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/models/geo/geo_model.dart';

import '../../constants/config.dart';
import '../../models/weather/weather_model.dart';

class MainController {
  List<WeatherModel> currencies = [];
  WeatherModel? data;
  GeoModel? geoData;
  void Function(void Function()) update;
  MainController(this.update);

  void getApiData() async {
    getGeo();
    Response? weatherResponse;
    String line =
        "${Constants.weatherBaseUrl}/VisualCrossingWebServices/rest/services/timeline/${geoData?.countryCapital}?unitGroup=us&key=${Constants.weatherApiKey}&contentType=json";
    print("$line/n/n/nwefwef");
    try {
      final url = Uri.parse(line);
      // "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/Toshkent?unitGroup=us&key=HX4CGDZRV4UEJURH9Z2ZQ4FUJ&contentType=json");
      weatherResponse = await get(url);
      print(weatherResponse.body);
      data = WeatherModel.fromJson(jsonDecode(weatherResponse.body));
      print(data);
      update(() {});
    } catch (e, stacTrace) {
      throw Error.throwWithStackTrace("Internet connection Error", stacTrace);
    }
  }

  void getGeo() async {
    Response? geoResponse;
    try {
      final url = Uri.parse(
          "${Constants.geoBaseUrl}/ipgeo?apiKey=${Constants.geoApiKey}");
      geoResponse = await get(url);
      print(geoResponse);
      geoData = GeoModel.fromJson(jsonDecode(geoResponse.body));
      print(geoData!.city);
      update(() {});
      } catch (e, stacTrace) {
      throw Error.throwWithStackTrace("Internet connection Error", stacTrace);
    }
  }
}
