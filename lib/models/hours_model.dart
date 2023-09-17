class Hours {
  final String? datetime;
  final int? datetimeEpoch;
  final double? temp;
  final double? feelslike;
  final double? humidity;
  final double? dew;
  final double? precip;
  final double? precipprob;
  final double? snow;
  final double? snowdepth;
  final List<String>? preciptype;
  final double? windgust;
  final double? windspeed;
  final double? winddir;
  final double? pressure;
  final double? visibility;
  final double? cloudcover;
  final double? solarradiation;
  final double? solarenergy;
  final double? uvindex;
  final double? severerisk;
  final String? conditions;
  final String? icon;
  final List<String>? stations;
  final String? source;

  Hours({
    this.datetime,
    this.datetimeEpoch,
    this.temp,
    this.feelslike,
    this.humidity,
    this.dew,
    this.precip,
    this.precipprob,
    this.snow,
    this.snowdepth,
    this.preciptype,
    this.windgust,
    this.windspeed,
    this.winddir,
    this.pressure,
    this.visibility,
    this.cloudcover,
    this.solarradiation,
    this.solarenergy,
    this.uvindex,
    this.severerisk,
    this.conditions,
    this.icon,
    this.stations,
    this.source,
  });

  factory Hours.fromJson(Map<String, dynamic> json) {
    return Hours(
      datetime: json["datetime"] as String?,
      datetimeEpoch: json["datetimeEpoch"] as int?,
      temp: json["temp"] as double?,
      feelslike: json["feelslike"] as double?,
      humidity: json["humidity"] as double?,
      dew: json["dew"] as double?,
      precip: json["precip"] as double?,
      precipprob: json["precipprob"] as double?,
      snow: json["snow"] as double?,
      snowdepth: json["snowdepth"] as double?,
      preciptype: json["preciptype"] != null
          ? List<String>.from(json["preciptype"])
          : null,
      windgust: json["windgust"] as double?,
      windspeed: json["windspeed"] as double?,
      winddir: json["winddir"] as double?,
      pressure: json["pressure"] as double?,
      visibility: json["visibility"] as double?,
      cloudcover: json["cloudcover"] as double?,
      solarradiation: json["solarradiation"] as double?,
      solarenergy: json["solarenergy"] as double?,
      uvindex: json["uvindex"] as double?,
      severerisk: json["severerisk"] as double?,
      conditions: json["conditions"] as String?,
      icon: json["icon"] as String?,
      stations:
          json["stations"] != null ? List<String>.from(json["stations"]) : null,
      source: json["source"] as String?,
    );
  }

  @override
  String toString() {
    return 'Hours(datetime: $datetime, datetimeEpoch: $datetimeEpoch, temp: $temp, feelslike: $feelslike, humidity: $humidity, dew: $dew, precip: $precip, precipprob: $precipprob, snow: $snow, snowdepth: $snowdepth, preciptype: $preciptype, windgust: $windgust, windspeed: $windspeed, winddir: $winddir, pressure: $pressure, visibility: $visibility, cloudcover: $cloudcover, solarradiation: $solarradiation, solarenergy: $solarenergy, uvindex: $uvindex, severerisk: $severerisk, conditions: $conditions, icon: $icon, stations: $stations, source: $source)';
  }
}
