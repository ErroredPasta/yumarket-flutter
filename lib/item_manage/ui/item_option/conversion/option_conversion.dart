import '../../../domain/model/option.dart';
import '../temp_option.dart';

List<TempOption> convertOptionToTempOption(List<Option> options) {
  final result = options.map(
        (option) {
      return TempOption(
        id: option.id,
        name: option.name,
        additionalPrice: option.additionalPrice,
      );
    },
  ).toList();

  return result;
}

List<Option> convertTempOptionsToOptions(List<TempOption> tempOptions) {
  final result = tempOptions.map(
        (tempOption) {
      return Option(
        id: tempOption.id,
        additionalPrice: tempOption.additionalPrice,
        name: tempOption.name,
      );
    },
  ).toList();

  return result;
}
