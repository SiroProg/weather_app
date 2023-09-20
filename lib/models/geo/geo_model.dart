class GeoModel {
  final String? ip;
  final String? continentCode;
  final String? continentName;
  final String? countryCode2;
  final String? countryCode3;
  final String? countryName;
  final String? countryCapital;
  final String? stateProv;
  final String? stateCode;
  final String? district;
  final String? city;
  final String? zipcode;
  final String? latitude;
  final String? longitude;
  final bool? isEu;
  final String? callingCode;
  final String? countryTld;
  final String? languages;
  final String? countryFlag;
  final String? geonameId;
  final String? isp;
  final String? connectionType;
  final String? organization;
  final Currency? currency;
  final TimeZone? timeZone;

  const GeoModel({
    this.ip,
    this.continentCode,
    this.continentName,
    this.countryCode2,
    this.countryCode3,
    this.countryName,
    this.countryCapital,
    this.stateProv,
    this.stateCode,
    this.district,
    this.city,
    this.zipcode,
    this.latitude,
    this.longitude,
    this.isEu,
    this.callingCode,
    this.countryTld,
    this.languages,
    this.countryFlag,
    this.geonameId,
    this.isp,
    this.connectionType,
    this.organization,
    this.currency,
    this.timeZone,
  });

  factory GeoModel.fromJson(Map<String, Object?> json) => GeoModel(
        ip: json['ip'] as String?,
        continentCode: json['continent_code'] as String?,
        continentName: json['continent_name'] as String?,
        countryCode2: json['country_code2'] as String?,
        countryCode3: json['country_code3'] as String?,
        countryName: json['country_name'] as String?,
        countryCapital: json['country_capital'] as String?,
        stateProv: json['state_prov'] as String?,
        stateCode: json['state_code'] as String?,
        district: json['district'] as String?,
        city: json['city'] as String?,
        zipcode: json['zipcode'] as String?,
        latitude: json['latitude'] as String?,
        longitude: json['longitude'] as String?,
        isEu: json['is_eu'] as bool?,
        callingCode: json['calling_code'] as String?,
        countryTld: json['country_tld'] as String?,
        languages: json['languages'] as String?,
        countryFlag: json['country_flag'] as String?,
        geonameId: json['geoname_id'] as String?,
        isp: json['isp'] as String?,
        connectionType: json['connection_type'] as String?,
        organization: json['organization'] as String?,
        currency: json['currency'] != null
            ? Currency.fromJson(json['currency'] as Map<String, Object?>)
            : null,
        timeZone: json['time_zone'] != null
            ? TimeZone.fromJson(json['time_zone'] as Map<String, Object?>)
            : null,
      );

  @override
  String toString() =>
      'GeoModel(ip: $ip, continentCode: $continentCode, continentName: $continentName, countryCode2: $countryCode2, countryCode3: $countryCode3, countryName: $countryName, countryCapital: $countryCapital, stateProv: $stateProv, stateCode: $stateCode, district: $district, city: $city, zipcode: $zipcode, latitude: $latitude, longitude: $longitude, isEu: $isEu, callingCode: $callingCode, countryTld: $countryTld, languages: $languages, countryFlag: $countryFlag, geonameId: $geonameId, isp: $isp, connectionType: $connectionType, organization: $organization, currency: $currency, timeZone: $timeZone)';

  @override
  bool operator ==(covariant GeoModel other) {
    if (identical(this, other)) return true;

    return other.ip == ip &&
        other.continentCode == continentCode &&
        other.continentName == continentName &&
        other.countryCode2 == countryCode2 &&
        other.countryCode3 == countryCode3 &&
        other.countryName == countryName &&
        other.countryCapital == countryCapital &&
        other.stateProv == stateProv &&
        other.stateCode == stateCode &&
        other.district == district &&
        other.city == city &&
        other.zipcode == zipcode &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.isEu == isEu &&
        other.callingCode == callingCode &&
        other.countryTld == countryTld &&
        other.languages == languages &&
        other.countryFlag == countryFlag &&
        other.geonameId == geonameId &&
        other.isp == isp &&
        other.connectionType == connectionType &&
        other.organization == organization &&
        other.currency == currency &&
        other.timeZone == timeZone;
  }
}

class Currency {
  final String? code;
  final String? name;
  final String? symbol;

  const Currency({
    this.code,
    this.name,
    this.symbol,
  });

  factory Currency.fromJson(Map<String, Object?> json) => Currency(
        code: json['code'] as String?,
        name: json['name'] as String?,
        symbol: json['symbol'] as String?,
      );

  @override
  String toString() => 'Currency(code: $code, name: $name, symbol: $symbol)';

  @override
  bool operator ==(covariant Currency other) =>
      other.code == code && other.name == name && other.symbol == symbol;
}

class TimeZone {
  final String? name;
  final int? offset;
  final int? offsetWithDst;
  final String? currentTime;
  final double? currentTimeUnix;
  final bool? isDst;
  final int? dstSavings;

  const TimeZone({
    this.name,
    this.offset,
    this.offsetWithDst,
    this.currentTime,
    this.currentTimeUnix,
    this.isDst,
    this.dstSavings,
  });

  factory TimeZone.fromJson(Map<String, Object?> json) => TimeZone(
        name: json['name'] as String?,
        offset: json['offset'] as int?,
        offsetWithDst: json['offset_with_dst'] as int?,
        currentTime: json['current_time'] as String?,
        currentTimeUnix: json['current_time_unix'] as double?,
        isDst: json['is_dst'] as bool?,
        dstSavings: json['dst_savings'] as int?,
      );

  @override
  String toString() =>
      'TimeZone(name: $name, offset: $offset, offsetWithDst: $offsetWithDst, currentTime: $currentTime, currentTimeUnix: $currentTimeUnix, isDst: $isDst, dstSavings: $dstSavings)';

  @override
  bool operator ==(covariant TimeZone other) =>
      other.name == name &&
      other.offset == offset &&
      other.offsetWithDst == offsetWithDst &&
      other.currentTime == currentTime &&
      other.currentTimeUnix == currentTimeUnix &&
      other.isDst == isDst &&
      other.dstSavings == dstSavings;
}
