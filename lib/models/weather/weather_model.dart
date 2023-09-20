import 'current_conditions.dart';
import 'day_model.dart';

class WeatherModel {
  final int? queryCost;
  final double? latitude;
  final double? longitude;
  final String? resolvedAddress;
  final String? address;
  final String? timezone;
  final double? tzoffset;
  final String? description;
  final List<Day> days;
  final List<Object?> alerts;
  final CurrentConditions? currentConditions;

  WeatherModel({
    required this.queryCost,
    required this.latitude,
    required this.longitude,
    required this.resolvedAddress,
    required this.address,
    required this.timezone,
    required this.tzoffset,
    required this.description,
    required this.days,
    required this.alerts,
    required this.currentConditions,
  });

  factory WeatherModel.fromJson(Map<String, Object?> json) {
    if (json.containsKey("queryCost") &&
        json.containsKey("latitude") &&
        json.containsKey("longitude") &&
        json.containsKey("resolvedAddress") &&
        json.containsKey("address") &&
        json.containsKey("timezone") &&
        json.containsKey("tzoffset") &&
        json.containsKey("description") &&
        json.containsKey("days") &&
        json.containsKey("alerts") &&
        json.containsKey("currentConditions")) {
      return WeatherModel(
        queryCost: json["queryCost"] as int?,
        latitude: json["latitude"] as double?,
        longitude: json["longitude"] as double?,
        resolvedAddress: json["resolvedAddress"] as String?,
        address: json["address"] as String?,
        timezone: json["timezone"] as String?,
        tzoffset: json["tzoffset"] as double?,
        description: json["description"] as String?,
        days: (json["days"] as List<Object?>)
            .map((e) => Day.fromJson(e as Map<String, Object?>))
            .toList(),
        alerts: json["alerts"] as List<Object?>,
        currentConditions: CurrentConditions.fromJson(
          json["currentConditions"] as Map<String, Object?>,
        ),
      );
    } else {
      throw Error.throwWithStackTrace(
        "Invalid Json data!",
        StackTrace.current,
      );
    }
  }
}