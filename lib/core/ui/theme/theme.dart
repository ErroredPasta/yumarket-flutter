import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff455e91),
      surfaceTint: Color(0xff455e91),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffd8e2ff),
      onPrimaryContainer: Color(0xff001a42),
      secondary: Color(0xff8e4955),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffd9dd),
      onSecondaryContainer: Color(0xff3b0715),
      tertiary: Color(0xff715573),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfffcd7fb),
      onTertiaryContainer: Color(0xff29132d),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff1a1b20),
      onSurfaceVariant: Color(0xff44474f),
      outline: Color(0xff75777f),
      outlineVariant: Color(0xffc5c6d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3036),
      inversePrimary: Color(0xffaec6ff),
      primaryFixed: Color(0xffd8e2ff),
      onPrimaryFixed: Color(0xff001a42),
      primaryFixedDim: Color(0xffaec6ff),
      onPrimaryFixedVariant: Color(0xff2c4678),
      secondaryFixed: Color(0xffffd9dd),
      onSecondaryFixed: Color(0xff3b0715),
      secondaryFixedDim: Color(0xffffb2bd),
      onSecondaryFixedVariant: Color(0xff72333e),
      tertiaryFixed: Color(0xfffcd7fb),
      onTertiaryFixed: Color(0xff29132d),
      tertiaryFixedDim: Color(0xffdfbcdf),
      onTertiaryFixedVariant: Color(0xff583e5a),
      surfaceDim: Color(0xffdad9e0),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3fa),
      surfaceContainer: Color(0xffeeedf4),
      surfaceContainerHigh: Color(0xffe8e7ef),
      surfaceContainerHighest: Color(0xffe2e2e9),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff274274),
      surfaceTint: Color(0xff455e91),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5b74a9),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff6d2f3b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa85f6b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff543a56),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff896b8a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff1a1b20),
      onSurfaceVariant: Color(0xff40434b),
      outline: Color(0xff5c5f67),
      outlineVariant: Color(0xff787a83),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3036),
      inversePrimary: Color(0xffaec6ff),
      primaryFixed: Color(0xff5b74a9),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff425b8f),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffa85f6b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff8b4753),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff896b8a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff6f5371),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdad9e0),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3fa),
      surfaceContainer: Color(0xffeeedf4),
      surfaceContainerHigh: Color(0xffe8e7ef),
      surfaceContainerHighest: Color(0xffe2e2e9),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00204f),
      surfaceTint: Color(0xff455e91),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff274274),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff430e1b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6d2f3b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff311934),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff543a56),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff21242b),
      outline: Color(0xff40434b),
      outlineVariant: Color(0xff40434b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3036),
      inversePrimary: Color(0xffe6ecff),
      primaryFixed: Color(0xff274274),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff0c2b5c),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6d2f3b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff511925),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff543a56),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3c243f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdad9e0),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3fa),
      surfaceContainer: Color(0xffeeedf4),
      surfaceContainerHigh: Color(0xffe8e7ef),
      surfaceContainerHighest: Color(0xffe2e2e9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffaec6ff),
      surfaceTint: Color(0xffaec6ff),
      onPrimary: Color(0xff112f60),
      primaryContainer: Color(0xff2c4678),
      onPrimaryContainer: Color(0xffd8e2ff),
      secondary: Color(0xffffb2bd),
      onSecondary: Color(0xff561d29),
      secondaryContainer: Color(0xff72333e),
      onSecondaryContainer: Color(0xffffd9dd),
      tertiary: Color(0xffdfbcdf),
      onTertiary: Color(0xff402843),
      tertiaryContainer: Color(0xff583e5a),
      onTertiaryContainer: Color(0xfffcd7fb),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff111318),
      onSurface: Color(0xffe2e2e9),
      onSurfaceVariant: Color(0xffc5c6d0),
      outline: Color(0xff8e9099),
      outlineVariant: Color(0xff44474f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e9),
      inversePrimary: Color(0xff455e91),
      primaryFixed: Color(0xffd8e2ff),
      onPrimaryFixed: Color(0xff001a42),
      primaryFixedDim: Color(0xffaec6ff),
      onPrimaryFixedVariant: Color(0xff2c4678),
      secondaryFixed: Color(0xffffd9dd),
      onSecondaryFixed: Color(0xff3b0715),
      secondaryFixedDim: Color(0xffffb2bd),
      onSecondaryFixedVariant: Color(0xff72333e),
      tertiaryFixed: Color(0xfffcd7fb),
      onTertiaryFixed: Color(0xff29132d),
      tertiaryFixedDim: Color(0xffdfbcdf),
      onTertiaryFixedVariant: Color(0xff583e5a),
      surfaceDim: Color(0xff111318),
      surfaceBright: Color(0xff37393e),
      surfaceContainerLowest: Color(0xff0c0e13),
      surfaceContainerLow: Color(0xff1a1b20),
      surfaceContainer: Color(0xff1e1f25),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff33353a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb4caff),
      surfaceTint: Color(0xffaec6ff),
      onPrimary: Color(0xff001538),
      primaryContainer: Color(0xff7790c7),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffb8c2),
      onSecondary: Color(0xff330310),
      secondaryContainer: Color(0xffc97a87),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffe3c0e3),
      onTertiary: Color(0xff240d27),
      tertiaryContainer: Color(0xffa687a7),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff111318),
      onSurface: Color(0xfffbfaff),
      onSurfaceVariant: Color(0xffc9cad4),
      outline: Color(0xffa1a2ac),
      outlineVariant: Color(0xff81838c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e9),
      inversePrimary: Color(0xff2d4779),
      primaryFixed: Color(0xffd8e2ff),
      onPrimaryFixed: Color(0xff00102e),
      primaryFixedDim: Color(0xffaec6ff),
      onPrimaryFixedVariant: Color(0xff193566),
      secondaryFixed: Color(0xffffd9dd),
      onSecondaryFixed: Color(0xff2c000b),
      secondaryFixedDim: Color(0xffffb2bd),
      onSecondaryFixedVariant: Color(0xff5d222e),
      tertiaryFixed: Color(0xfffcd7fb),
      onTertiaryFixed: Color(0xff1e0822),
      tertiaryFixedDim: Color(0xffdfbcdf),
      onTertiaryFixedVariant: Color(0xff462d49),
      surfaceDim: Color(0xff111318),
      surfaceBright: Color(0xff37393e),
      surfaceContainerLowest: Color(0xff0c0e13),
      surfaceContainerLow: Color(0xff1a1b20),
      surfaceContainer: Color(0xff1e1f25),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff33353a),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffbfaff),
      surfaceTint: Color(0xffaec6ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffb4caff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9f9),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffb8c2),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fa),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe3c0e3),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff111318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffbfaff),
      outline: Color(0xffc9cad4),
      outlineVariant: Color(0xffc9cad4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e9),
      inversePrimary: Color(0xff082859),
      primaryFixed: Color(0xffdfe6ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffb4caff),
      onPrimaryFixedVariant: Color(0xff001538),
      secondaryFixed: Color(0xffffdfe2),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb8c2),
      onSecondaryFixedVariant: Color(0xff330310),
      tertiaryFixed: Color(0xffffdcfe),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffe3c0e3),
      onTertiaryFixedVariant: Color(0xff240d27),
      surfaceDim: Color(0xff111318),
      surfaceBright: Color(0xff37393e),
      surfaceContainerLowest: Color(0xff0c0e13),
      surfaceContainerLow: Color(0xff1a1b20),
      surfaceContainer: Color(0xff1e1f25),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff33353a),
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
