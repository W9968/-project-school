import "package:flutter/material.dart";

class MaterialTheme {
  
  static const Color dynamicSysLightOnPrimaryFixed = Color(0xff002021);
  static const Color dynamicSysLightPrimaryFixedDim = Color(0xff4cd9df);
  static const Color dynamicSysLightOnPrimaryFixedVariant = Color(0xff004f52);
  static const Color dynamicSysLightSecondary = Color(0xff4a6364);
  static const Color dynamicSysLightOnSecondary = Color(0xffffffff);
  static const Color dynamicSysLightSecondaryContainer = Color(0xffcce8e9);
  static const Color dynamicSysLightOnSecondaryContainer = Color(0xff041f20);
  static const Color dynamicSysLightSecondaryFixed = Color(0xffcce8e9);
  static const Color dynamicSysLightOnSecondaryFixed = Color(0xff041f20);
  static const Color dynamicSysLightSecondaryFixedDim = Color(0xffb1cccd);
  static const Color dynamicSysLightOnSecondaryFixedVariant = Color(0xff324b4c);
  static const Color dynamicSysLightTertiary = Color(0xff4d5f7c);
  static const Color dynamicSysLightOnTertiary = Color(0xffffffff);
  static const Color dynamicSysLightTertiaryContainer = Color(0xffd5e3ff);
  static const Color dynamicSysLightOnTertiaryContainer = Color(0xff071c36);
  static const Color dynamicSysLightTertiaryFixed = Color(0xffd5e3ff);
  static const Color dynamicSysLightOnTertiaryFixed = Color(0xff071c36);
  static const Color dynamicSysLightTertiaryFixedDim = Color(0xffb5c7e9);
  static const Color dynamicSysLightOnTertiaryFixedVariant = Color(0xff364764);
  static const Color dynamicSysLightError = Color(0xffba1a1a);
  static const Color dynamicSysLightOnError = Color(0xffffffff);
  static const Color dynamicSysLightErrorContainer = Color(0xffffdad6);
  static const Color dynamicSysLightOnErrorContainer = Color(0xff410002);
  static const Color dynamicSysLightOutline = Color(0xff6f7979);
  static const Color dynamicSysLightBackground = Color(0xfffafdfc);
  static const Color dynamicSysLightOnBackground = Color(0xff191c1c);
  static const Color dynamicSysLightSurface = Color(0xfff7faf9);
  static const Color dynamicSysLightOnSurface = Color(0xff191c1c);
  static const Color dynamicSysLightSurfaceVariant = Color(0xffdae4e4);
  static const Color dynamicSysLightOnSurfaceVariant = Color(0xff3f4949);
  static const Color dynamicSysLightInverseSurface = Color(0xff2d3131);
  static const Color dynamicSysLightInverseOnSurface = Color(0xffeff1f1);
  static const Color dynamicSysLightInversePrimary = Color(0xff4cd9df);
  static const Color dynamicSysLightShadow = Color(0xff000000);
  static const Color dynamicSysLightSurfaceTint = Color(0xff00696d);
  static const Color dynamicSysLightOutlineVariant = Color(0xffbec8c8);
  static const Color dynamicSysLightScrim = Color(0xff000000);
  static const Color dynamicSysLightSurfaceContainerHighest = Color(0xffe0e3e2);
  static const Color dynamicSysLightSurfaceContainerHigh = Color(0xffe4eceb);
  static const Color dynamicSysLightSurfaceContainer = Color(0xfff1f5f4);
  static const Color dynamicSysLightSurfaceContainerLow = Color(0xfff1f5f4);
  static const Color dynamicSysLightSurfaceContainerLowest = Color(0xffffffff);
  static const Color dynamicSysLightSurfaceBright = Color(0xfff7faf9);
  static const Color dynamicSysLightSurfaceDim = Color(0xffd8dada);
  static const Color dynamicSysLightPrimary = Color(0xff00696d);
  static const Color dynamicSysLightOnPrimary = Color(0xffffffff);
  static const Color dynamicSysLightPrimaryContainer = Color(0xff6ff6fc);
  static const Color dynamicSysLightOnPrimaryContainer = Color(0xff002021);
  static const Color dynamicSysLightPrimaryFixed = Color(0xff6ff6fc);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: dynamicSysLightPrimary,
      surfaceTint: dynamicSysLightSurfaceTint,
      onPrimary: dynamicSysLightOnPrimary,
      primaryContainer: dynamicSysLightPrimaryContainer,
      onPrimaryContainer: dynamicSysLightOnPrimaryContainer,
      secondary: dynamicSysLightSecondary,
      onSecondary: dynamicSysLightOnSecondary,
      secondaryContainer: dynamicSysLightSecondaryContainer,
      onSecondaryContainer: dynamicSysLightOnSecondaryContainer,
      tertiary: dynamicSysLightTertiary,
      onTertiary: dynamicSysLightOnTertiary,
      tertiaryContainer: dynamicSysLightTertiaryContainer,
      onTertiaryContainer: dynamicSysLightOnTertiaryContainer,
      error: dynamicSysLightError,
      onError: dynamicSysLightOnError,
      errorContainer: dynamicSysLightErrorContainer,
      onErrorContainer: dynamicSysLightOnErrorContainer,
      background: dynamicSysLightBackground,
      onBackground: dynamicSysLightOnBackground,
      surface: dynamicSysLightSurface,
      onSurface: dynamicSysLightOnSurface,
      surfaceVariant: dynamicSysLightSurfaceVariant,
      onSurfaceVariant: dynamicSysLightOnSurfaceVariant,
      outline: dynamicSysLightOutline,
      outlineVariant: dynamicSysLightOutlineVariant,
      shadow: dynamicSysLightShadow,
      scrim: dynamicSysLightScrim,
      inverseSurface: dynamicSysLightInverseSurface,
      inverseOnSurface: dynamicSysLightInverseOnSurface,
      inversePrimary: dynamicSysLightInversePrimary,
      primaryFixed: dynamicSysLightPrimaryFixed,
      onPrimaryFixed: dynamicSysLightOnPrimaryFixed,
      primaryFixedDim: dynamicSysLightPrimaryFixedDim,
      onPrimaryFixedVariant: dynamicSysLightOnPrimaryFixedVariant,
      secondaryFixed: dynamicSysLightSecondaryFixed,
      onSecondaryFixed: dynamicSysLightOnSecondaryFixed,
      secondaryFixedDim: dynamicSysLightSecondaryFixedDim,
      onSecondaryFixedVariant: dynamicSysLightOnSecondaryFixedVariant,
      tertiaryFixed: dynamicSysLightTertiaryFixed,
      onTertiaryFixed: dynamicSysLightOnTertiaryFixed,
      tertiaryFixedDim: dynamicSysLightTertiaryFixedDim,
      onTertiaryFixedVariant: dynamicSysLightOnTertiaryFixedVariant,
      surfaceDim: dynamicSysLightSurfaceDim,
      surfaceBright: dynamicSysLightSurfaceBright,
      surfaceContainerLowest: dynamicSysLightSurfaceContainerLowest,
      surfaceContainerLow: dynamicSysLightSurfaceContainerLow,
      surfaceContainer: dynamicSysLightSurfaceContainer,
      surfaceContainerHigh: dynamicSysLightSurfaceContainerHigh,
      surfaceContainerHighest: dynamicSysLightSurfaceContainerHighest,
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

static const Color dynamicSysDarkPrimary = Color(0xff91d2d5);
  static const Color dynamicSysDarkOnPrimary = Color(0xff003739);
  static const Color dynamicSysDarkPrimaryContainer = Color(0xff004f52);
  static const Color dynamicSysDarkOnPrimaryContainer = Color(0xffaceef1);
  static const Color dynamicSysDarkPrimaryFixed = Color(0xff6ff6fc);
  static const Color dynamicSysDarkOnPrimaryFixed = Color(0xff002021);
  static const Color dynamicSysDarkPrimaryFixedDim = Color(0xff4cd9df);
  static const Color dynamicSysDarkOnPrimaryFixedVariant = Color(0xff004f52);
  static const Color dynamicSysDarkSecondary = Color(0xffbbc9ca);
  static const Color dynamicSysDarkOnSecondary = Color(0xff263333);
  static const Color dynamicSysDarkSecondaryContainer = Color(0xff3c494a);
  static const Color dynamicSysDarkOnSecondaryContainer = Color(0xffd7e5e6);
  static const Color dynamicSysDarkSecondaryFixed = Color(0xffcce8e9);
  static const Color dynamicSysDarkOnSecondaryFixed = Color(0xff041f20);
  static const Color dynamicSysDarkSecondaryFixedDim = Color(0xffb1cccd);
  static const Color dynamicSysDarkOnSecondaryFixedVariant = Color(0xff324b4c);
  static const Color dynamicSysDarkTertiary = Color(0xffbec7da);
  static const Color dynamicSysDarkOnTertiary = Color(0xff283140);
  static const Color dynamicSysDarkTertiaryContainer = Color(0xff3e4757);
  static const Color dynamicSysDarkOnTertiaryContainer = Color(0xffd5e3ff);
  static const Color dynamicSysDarkTertiaryFixed = Color(0xffd5e3ff);
  static const Color dynamicSysDarkOnTertiaryFixed = Color(0xff071c36);
  static const Color dynamicSysDarkTertiaryFixedDim = Color(0xffb5c7e9);
  static const Color dynamicSysDarkOnTertiaryFixedVariant = Color(0xff364764);
  static const Color dynamicSysDarkError = Color(0xffffb4ab);
  static const Color dynamicSysDarkOnError = Color(0xff690005);
  static const Color dynamicSysDarkErrorContainer = Color(0xff93000a);
  static const Color dynamicSysDarkOnErrorContainer = Color(0xffffdad6);
  static const Color dynamicSysDarkOutline = Color(0xff8d9291);
  static const Color dynamicSysDarkBackground = Color(0xff1a1c1c);
  static const Color dynamicSysDarkOnBackground = Color(0xffe2e2e2);
  static const Color dynamicSysDarkSurface = Color(0xff1a1c1c);
  static const Color dynamicSysDarkOnSurface = Color(0xffe2e2e2);
  static const Color dynamicSysDarkSurfaceVariant = Color(0xff434848);
  static const Color dynamicSysDarkOnSurfaceVariant = Color(0xffc3c7c7);
  static const Color dynamicSysDarkInverseSurface = Color(0xffe2e2e2);
  static const Color dynamicSysDarkInverseOnSurface = Color(0xff2f3131);
  static const Color dynamicSysDarkInversePrimary = Color(0xff00696d);
  static const Color dynamicSysDarkShadow = Color(0xff000000);
  static const Color dynamicSysDarkSurfaceTint = Color(0xff91d2d5);
  static const Color dynamicSysDarkOutlineVariant = Color(0xff3f4949);
  static const Color dynamicSysDarkScrim = Color(0xff000000);
  static const Color dynamicSysDarkSurfaceContainerHighest = Color(0xff353b3d);
  static const Color dynamicSysDarkSurfaceContainerHigh = Color(0xff262e2f);
  static const Color dynamicSysDarkSurfaceContainer = Color(0xff202525);
  static const Color dynamicSysDarkSurfaceContainerLow = Color(0xff191c1c);
  static const Color dynamicSysDarkSurfaceContainerLowest = Color(0xff0b0f0f);
  static const Color dynamicSysDarkSurfaceBright = Color(0xff363a3a);
  static const Color dynamicSysDarkSurfaceDim = Color(0xff101414);

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: dynamicSysDarkPrimary,
      surfaceTint: dynamicSysDarkSurfaceTint,
      onPrimary: dynamicSysDarkOnPrimary,
      primaryContainer: dynamicSysDarkPrimaryContainer,
      onPrimaryContainer: dynamicSysDarkOnPrimaryContainer,
      secondary: dynamicSysDarkSecondary,
      onSecondary: dynamicSysDarkOnSecondary,
      secondaryContainer: dynamicSysDarkSecondaryContainer,
      onSecondaryContainer: dynamicSysDarkOnSecondaryContainer,
      tertiary: dynamicSysDarkTertiary,
      onTertiary: dynamicSysDarkOnTertiary,
      tertiaryContainer: dynamicSysDarkTertiaryContainer,
      onTertiaryContainer: dynamicSysDarkOnTertiaryContainer,
      error: dynamicSysDarkError,
      onError: dynamicSysDarkOnError,
      errorContainer: dynamicSysDarkErrorContainer,
      onErrorContainer: dynamicSysDarkOnErrorContainer,
      background: dynamicSysDarkBackground,
      onBackground: dynamicSysDarkOnBackground,
      surface: dynamicSysDarkSurface,
      onSurface: dynamicSysDarkOnSurface,
      surfaceVariant: dynamicSysDarkSurfaceVariant,
      onSurfaceVariant: dynamicSysDarkOnSurfaceVariant,
      outline: dynamicSysDarkOutline,
      outlineVariant: dynamicSysDarkOutlineVariant,
      shadow: dynamicSysDarkShadow,
      scrim: dynamicSysDarkScrim,
      inverseSurface: dynamicSysDarkInverseSurface,
      inverseOnSurface: dynamicSysDarkInverseOnSurface,
      inversePrimary: dynamicSysDarkInversePrimary,
      primaryFixed: dynamicSysDarkPrimaryFixed,
      onPrimaryFixed: dynamicSysDarkOnPrimaryFixed,
      primaryFixedDim: dynamicSysDarkPrimaryFixedDim,
      onPrimaryFixedVariant: dynamicSysDarkOnPrimaryFixedVariant,
      secondaryFixed: dynamicSysDarkSecondaryFixed,
      onSecondaryFixed: dynamicSysDarkOnSecondaryFixed,
      secondaryFixedDim: dynamicSysDarkSecondaryFixedDim,
      onSecondaryFixedVariant: dynamicSysDarkOnSecondaryFixedVariant,
      tertiaryFixed: dynamicSysDarkTertiaryFixed,
      onTertiaryFixed: dynamicSysDarkOnTertiaryFixed,
      tertiaryFixedDim: dynamicSysDarkTertiaryFixedDim,
      onTertiaryFixedVariant: dynamicSysDarkOnTertiaryFixedVariant,
      surfaceDim: dynamicSysDarkSurfaceDim,
      surfaceBright: dynamicSysDarkSurfaceBright,
      surfaceContainerLowest: dynamicSysDarkSurfaceContainerLowest,
      surfaceContainerLow: dynamicSysDarkSurfaceContainerLow,
      surfaceContainer: dynamicSysDarkSurfaceContainer,
      surfaceContainerHigh: dynamicSysDarkSurfaceContainerHigh,
      surfaceContainerHighest: dynamicSysDarkSurfaceContainerHighest,
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
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
  final ColorFamily dark;


  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.dark,

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
