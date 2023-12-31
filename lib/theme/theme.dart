import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4283524390),
      surfaceTint: Color(4283524390),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292144286),
      onPrimaryContainer: Color(4279508736),
      secondary: Color(4284113223),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4292798149),
      onSecondaryContainer: Color(4279705097),
      tertiary: Color(4281951840),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4290571492),
      onTertiaryContainer: Color(4278198301),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294638318),
      onBackground: Color(4279901205),
      surface: Color(4294638318),
      onSurface: Color(4279901205),
      surfaceVariant: Color(4293059796),
      onSurfaceVariant: Color(4282730556),
      outline: Color(4285954155),
      outlineVariant: Color(4291217593),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282857),
      inverseOnSurface: Color(4294046181),
      inversePrimary: Color(4290301828),
      primaryFixed: Color(4292144286),
      onPrimaryFixed: Color(4279508736),
      primaryFixedDim: Color(4290301828),
      onPrimaryFixedVariant: Color(4282010896),
      secondaryFixed: Color(4292798149),
      onSecondaryFixed: Color(4279705097),
      secondaryFixedDim: Color(4290955946),
      onSecondaryFixedVariant: Color(4282534449),
      tertiaryFixed: Color(4290571492),
      onTertiaryFixed: Color(4278198301),
      tertiaryFixedDim: Color(4288729288),
      onTertiaryFixedVariant: Color(4280307272),
      surfaceDim: Color(4292533199),
      surfaceBright: Color(4294638318),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243560),
      surfaceContainer: Color(4293849059),
      surfaceContainerHigh: Color(4293519837),
      surfaceContainerHighest: Color(4293125079),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4281813260),
      surfaceTint: Color(4283524390),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4284972090),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282271278),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285560924),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4279978564),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283465078),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294638318),
      onBackground: Color(4279901205),
      surface: Color(4294638318),
      onSurface: Color(4279901205),
      surfaceVariant: Color(4293059796),
      onSurfaceVariant: Color(4282467385),
      outline: Color(4284375124),
      outlineVariant: Color(4286151791),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282857),
      inverseOnSurface: Color(4294046181),
      inversePrimary: Color(4290301828),
      primaryFixed: Color(4284972090),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283392804),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285560924),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283916101),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283465078),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281820253),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292533199),
      surfaceBright: Color(4294638318),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243560),
      surfaceContainer: Color(4293849059),
      surfaceContainerHigh: Color(4293519837),
      surfaceContainerHighest: Color(4293125079),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4279903744),
      surfaceTint: Color(4283524390),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4281813260),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280165647),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4282271278),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278200355),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4279978564),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294638318),
      onBackground: Color(4279901205),
      surface: Color(4294638318),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4293059796),
      onSurfaceVariant: Color(4280427803),
      outline: Color(4282467385),
      outlineVariant: Color(4282467385),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282857),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4292736678),
      primaryFixed: Color(4281813260),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4280430848),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4282271278),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4280823577),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4279978564),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278203182),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292533199),
      surfaceBright: Color(4294638318),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243560),
      surfaceContainer: Color(4293849059),
      surfaceContainerHigh: Color(4293519837),
      surfaceContainerHighest: Color(4293125079),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4290301828),
      surfaceTint: Color(4290301828),
      onPrimary: Color(4280628480),
      primaryContainer: Color(4282010896),
      onPrimaryContainer: Color(4292144286),
      secondary: Color(4290955946),
      onSecondary: Color(4281086749),
      secondaryContainer: Color(4282534449),
      onSecondaryContainer: Color(4292798149),
      tertiary: Color(4288729288),
      onTertiary: Color(4278269746),
      tertiaryContainer: Color(4280307272),
      onTertiaryContainer: Color(4290571492),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279374861),
      onBackground: Color(4293125079),
      surface: Color(4279374861),
      onSurface: Color(4293125079),
      surfaceVariant: Color(4282730556),
      onSurfaceVariant: Color(4291217593),
      outline: Color(4287664772),
      outlineVariant: Color(4282730556),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293125079),
      inverseOnSurface: Color(4281282857),
      inversePrimary: Color(4283524390),
      primaryFixed: Color(4292144286),
      onPrimaryFixed: Color(4279508736),
      primaryFixedDim: Color(4290301828),
      onPrimaryFixedVariant: Color(4282010896),
      secondaryFixed: Color(4292798149),
      onSecondaryFixed: Color(4279705097),
      secondaryFixedDim: Color(4290955946),
      onSecondaryFixedVariant: Color(4282534449),
      tertiaryFixed: Color(4290571492),
      onTertiaryFixed: Color(4278198301),
      tertiaryFixedDim: Color(4288729288),
      onTertiaryFixedVariant: Color(4280307272),
      surfaceDim: Color(4279374861),
      surfaceBright: Color(4281874994),
      surfaceContainerLowest: Color(4279045896),
      surfaceContainerLow: Color(4279901205),
      surfaceContainer: Color(4280164377),
      surfaceContainerHigh: Color(4280888099),
      surfaceContainerHighest: Color(4281611822),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4290565256),
      surfaceTint: Color(4290301828),
      onPrimary: Color(4279245056),
      primaryContainer: Color(4286814548),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4291219118),
      onSecondary: Color(4279375877),
      secondaryContainer: Color(4287403127),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4289057996),
      onTertiary: Color(4278196759),
      tertiaryContainer: Color(4285307282),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279374861),
      onBackground: Color(4293125079),
      surface: Color(4279374861),
      onSurface: Color(4294704111),
      surfaceVariant: Color(4282730556),
      onSurfaceVariant: Color(4291480765),
      outline: Color(4288849046),
      outlineVariant: Color(4286743671),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293125079),
      inverseOnSurface: Color(4280888099),
      inversePrimary: Color(4282142225),
      primaryFixed: Color(4292144286),
      onPrimaryFixed: Color(4278981632),
      primaryFixedDim: Color(4290301828),
      onPrimaryFixedVariant: Color(4280957952),
      secondaryFixed: Color(4292798149),
      onSecondaryFixed: Color(4279046915),
      secondaryFixedDim: Color(4290955946),
      onSecondaryFixedVariant: Color(4281481506),
      tertiaryFixed: Color(4290571492),
      onTertiaryFixed: Color(4278195474),
      tertiaryFixedDim: Color(4288729288),
      onTertiaryFixedVariant: Color(4278861112),
      surfaceDim: Color(4279374861),
      surfaceBright: Color(4281874994),
      surfaceContainerLowest: Color(4279045896),
      surfaceContainerLow: Color(4279901205),
      surfaceContainer: Color(4280164377),
      surfaceContainerHigh: Color(4280888099),
      surfaceContainerHighest: Color(4281611822),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294377434),
      surfaceTint: Color(4290301828),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4290565256),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294442972),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4291219118),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293656570),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4289057996),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279374861),
      onBackground: Color(4293125079),
      surface: Color(4279374861),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4282730556),
      onSurfaceVariant: Color(4294704364),
      outline: Color(4291480765),
      outlineVariant: Color(4291480765),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293125079),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4280299264),
      primaryFixed: Color(4292407458),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4290565256),
      onPrimaryFixedVariant: Color(4279245056),
      secondaryFixed: Color(4293127113),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4291219118),
      onSecondaryFixedVariant: Color(4279375877),
      tertiaryFixed: Color(4290834664),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4289057996),
      onTertiaryFixedVariant: Color(4278196759),
      surfaceDim: Color(4279374861),
      surfaceBright: Color(4281874994),
      surfaceContainerLowest: Color(4279045896),
      surfaceContainerLow: Color(4279901205),
      surfaceContainer: Color(4280164377),
      surfaceContainerHigh: Color(4280888099),
      surfaceContainerHighest: Color(4281611822),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
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

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
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
