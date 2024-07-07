Map<String, dynamic> rtdbDataToJson(dynamic rtdbData) {
  Map<String, dynamic> result = {};

  for (var MapEntry(:key, :value) in rtdbData.entries) {
    if (value is Map) value = rtdbDataToJson(value);
    if (value is List && value.first is Map) value = value.map(rtdbDataToJson).toList();
    result[key.toString()] = value;
  }

  return result;
}