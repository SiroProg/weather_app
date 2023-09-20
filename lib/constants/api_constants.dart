abstract final class ApiConstants {
  static String weatherPath(String city) =>
      "/VisualCrossingWebServices/rest/services/timeline/$city";

  static Map<String, String> weatherParams({
    required String uGroup,
    required String key,
  }) =>
      {
        "unitGroup": uGroup,
        "key": key,
        "contentType": "json",
      };

  static const geoPath = "/ipgeo";
  static Map<String, String> geoParams(String apiKey) => {
        "apiKey": apiKey,
      };
}
