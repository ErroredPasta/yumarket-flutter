String screamingSnakeToCamel(String input) {
  List<String> parts = input.toLowerCase().split('_');

  for (int i = 1; i < parts.length; i++) {
    parts[i] = parts[i][0].toUpperCase() + parts[i].substring(1);
  }

  return parts.join('');
}

String camelToScreamingSnake(String input) {
  final regex = RegExp(r'([a-z0-9])([A-Z])');

  String result = input.replaceAllMapped(
    regex,
    (Match match) => '${match.group(1)}_${match.group(2)}',
  );

  result = result.toUpperCase();

  return result;
}
