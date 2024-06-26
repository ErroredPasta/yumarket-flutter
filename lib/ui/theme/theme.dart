import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282736273),
      surfaceTint: Color(4282736273),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292403967),
      onPrimaryContainer: Color(4278196802),
      secondary: Color(4287514965),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294957533),
      onSecondaryContainer: Color(4282058517),
      tertiary: Color(4285617523),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294760443),
      onTertiaryContainer: Color(4280881965),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294572543),
      onSurface: Color(4279900960),
      onSurfaceVariant: Color(4282664783),
      outline: Color(4285888383),
      outlineVariant: Color(4291151568),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inversePrimary: Color(4289644287),
      primaryFixed: Color(4292403967),
      onPrimaryFixed: Color(4278196802),
      primaryFixedDim: Color(4289644287),
      onPrimaryFixedVariant: Color(4281091704),
      secondaryFixed: Color(4294957533),
      onSecondaryFixed: Color(4282058517),
      secondaryFixedDim: Color(4294947517),
      onSecondaryFixedVariant: Color(4285674302),
      tertiaryFixed: Color(4294760443),
      onTertiaryFixed: Color(4280881965),
      tertiaryFixedDim: Color(4292852959),
      onTertiaryFixedVariant: Color(4283973210),
      surfaceDim: Color(4292532704),
      surfaceBright: Color(4294572543),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294177786),
      surfaceContainer: Color(4293848564),
      surfaceContainerHigh: Color(4293453807),
      surfaceContainerHighest: Color(4293059305),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4280762996),
      surfaceTint: Color(4282736273),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4284183721),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4285345595),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4289224555),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283710038),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287196042),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294572543),
      onSurface: Color(4279900960),
      onSurfaceVariant: Color(4282401611),
      outline: Color(4284243815),
      outlineVariant: Color(4286085763),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inversePrimary: Color(4289644287),
      primaryFixed: Color(4284183721),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4282538895),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4289224555),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4287317843),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287196042),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285485937),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292532704),
      surfaceBright: Color(4294572543),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294177786),
      surfaceContainer: Color(4293848564),
      surfaceContainerHigh: Color(4293453807),
      surfaceContainerHighest: Color(4293059305),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278198351),
      surfaceTint: Color(4282736273),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280762996),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282584603),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285345595),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281407796),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283710038),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294572543),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280362027),
      outline: Color(4282401611),
      outlineVariant: Color(4282401611),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inversePrimary: Color(4293324031),
      primaryFixed: Color(4280762996),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278987612),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285345595),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283504933),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283710038),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282131519),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292532704),
      surfaceBright: Color(4294572543),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294177786),
      surfaceContainer: Color(4293848564),
      surfaceContainerHigh: Color(4293453807),
      surfaceContainerHighest: Color(4293059305),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289644287),
      surfaceTint: Color(4289644287),
      onPrimary: Color(4279316320),
      primaryContainer: Color(4281091704),
      onPrimaryContainer: Color(4292403967),
      secondary: Color(4294947517),
      onSecondary: Color(4283833641),
      secondaryContainer: Color(4285674302),
      onSecondaryContainer: Color(4294957533),
      tertiary: Color(4292852959),
      onTertiary: Color(4282394691),
      tertiaryContainer: Color(4283973210),
      onTertiaryContainer: Color(4294760443),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279309080),
      onSurface: Color(4293059305),
      onSurfaceVariant: Color(4291151568),
      outline: Color(4287533209),
      outlineVariant: Color(4282664783),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059305),
      inversePrimary: Color(4282736273),
      primaryFixed: Color(4292403967),
      onPrimaryFixed: Color(4278196802),
      primaryFixedDim: Color(4289644287),
      onPrimaryFixedVariant: Color(4281091704),
      secondaryFixed: Color(4294957533),
      onSecondaryFixed: Color(4282058517),
      secondaryFixedDim: Color(4294947517),
      onSecondaryFixedVariant: Color(4285674302),
      tertiaryFixed: Color(4294760443),
      onTertiaryFixed: Color(4280881965),
      tertiaryFixedDim: Color(4292852959),
      onTertiaryFixedVariant: Color(4283973210),
      surfaceDim: Color(4279309080),
      surfaceBright: Color(4281809214),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279900960),
      surfaceContainer: Color(4280164133),
      surfaceContainerHigh: Color(4280822319),
      surfaceContainerHighest: Color(4281546042),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4290038527),
      surfaceTint: Color(4289644287),
      onPrimary: Color(4278195512),
      primaryContainer: Color(4286025927),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294949058),
      onSecondary: Color(4281533200),
      secondaryContainer: Color(4291394183),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293116131),
      onTertiary: Color(4280552743),
      tertiaryContainer: Color(4289103783),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279309080),
      onSurface: Color(4294703871),
      onSurfaceVariant: Color(4291414740),
      outline: Color(4288783020),
      outlineVariant: Color(4286677900),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059305),
      inversePrimary: Color(4281157497),
      primaryFixed: Color(4292403967),
      onPrimaryFixed: Color(4278194222),
      primaryFixedDim: Color(4289644287),
      onPrimaryFixedVariant: Color(4279842150),
      secondaryFixed: Color(4294957533),
      onSecondaryFixed: Color(4281073675),
      secondaryFixedDim: Color(4294947517),
      onSecondaryFixedVariant: Color(4284293678),
      tertiaryFixed: Color(4294760443),
      onTertiaryFixed: Color(4280158242),
      tertiaryFixedDim: Color(4292852959),
      onTertiaryFixedVariant: Color(4282789193),
      surfaceDim: Color(4279309080),
      surfaceBright: Color(4281809214),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279900960),
      surfaceContainer: Color(4280164133),
      surfaceContainerHigh: Color(4280822319),
      surfaceContainerHighest: Color(4281546042),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294703871),
      surfaceTint: Color(4289644287),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4290038527),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965753),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4294949058),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965754),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4293116131),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279309080),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294703871),
      outline: Color(4291414740),
      outlineVariant: Color(4291414740),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059305),
      inversePrimary: Color(4278724697),
      primaryFixed: Color(4292863743),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4290038527),
      onPrimaryFixedVariant: Color(4278195512),
      secondaryFixed: Color(4294959074),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4294949058),
      onSecondaryFixedVariant: Color(4281533200),
      tertiaryFixed: Color(4294958334),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4293116131),
      onTertiaryFixedVariant: Color(4280552743),
      surfaceDim: Color(4279309080),
      surfaceBright: Color(4281809214),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279900960),
      surfaceContainer: Color(4280164133),
      surfaceContainerHigh: Color(4280822319),
      surfaceContainerHighest: Color(4281546042),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
