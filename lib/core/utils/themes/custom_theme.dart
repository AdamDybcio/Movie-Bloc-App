import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return FlexThemeData.light(
      scheme: FlexScheme.indigo,
      surfaceMode: FlexSurfaceMode.highBackgroundLowScaffold,
      blendLevel: 1,
      appBarStyle: FlexAppBarStyle.background,
      bottomAppBarElevation: 2.0,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 6,
        blendOnColors: false,
        useTextTheme: true,
        useM2StyleDividerInM3: true,
        adaptiveSplash: FlexAdaptive.all(),
        splashType: FlexSplashType.inkSparkle,
        splashTypeAdaptive: FlexSplashType.inkSparkle,
        adaptiveRemoveElevationTint: FlexAdaptive.excludeWebAndroidFuchsia(),
        adaptiveElevationShadowsBack: FlexAdaptive.excludeWebAndroidFuchsia(),
        adaptiveAppBarScrollUnderOff: FlexAdaptive.excludeWebAndroidFuchsia(),
        adaptiveRadius: FlexAdaptive.all(),
        defaultRadiusAdaptive: 15.0,
        elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
        elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
        outlinedButtonOutlineSchemeColor: SchemeColor.primary,
        toggleButtonsBorderSchemeColor: SchemeColor.primary,
        segmentedButtonSchemeColor: SchemeColor.primary,
        segmentedButtonBorderSchemeColor: SchemeColor.primary,
        unselectedToggleIsColored: true,
        sliderValueTinted: true,
        inputDecoratorSchemeColor: SchemeColor.primary,
        inputDecoratorBackgroundAlpha: 19,
        inputDecoratorUnfocusedHasBorder: false,
        inputDecoratorFocusedBorderWidth: 1.0,
        inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
        fabUseShape: true,
        fabAlwaysCircular: true,
        fabSchemeColor: SchemeColor.tertiary,
        cardRadius: 14.0,
        popupMenuRadius: 6.0,
        popupMenuElevation: 3.0,
        alignedDropdown: true,
        dialogRadius: 18.0,
        useInputDecoratorThemeInDialogs: true,
        appBarScrolledUnderElevation: 1.0,
        drawerElevation: 1.0,
        drawerIndicatorSchemeColor: SchemeColor.primary,
        bottomSheetRadius: 18.0,
        bottomSheetElevation: 2.0,
        bottomSheetModalElevation: 4.0,
        bottomNavigationBarMutedUnselectedLabel: false,
        bottomNavigationBarMutedUnselectedIcon: false,
        menuRadius: 6.0,
        menuElevation: 3.0,
        menuBarRadius: 0.0,
        menuBarElevation: 1.0,
        menuBarShadowColor: Color(0x00000000),
        navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
        navigationBarMutedUnselectedLabel: false,
        navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
        navigationBarMutedUnselectedIcon: false,
        navigationBarIndicatorSchemeColor: SchemeColor.primary,
        navigationBarIndicatorOpacity: 1.00,
        navigationBarElevation: 1.0,
        navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
        navigationRailMutedUnselectedLabel: false,
        navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
        navigationRailMutedUnselectedIcon: false,
        navigationRailIndicatorSchemeColor: SchemeColor.primary,
        navigationRailIndicatorOpacity: 1.00,
        navigationRailBackgroundSchemeColor: SchemeColor.surface,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }

  static ThemeData get darkTheme {
    return FlexThemeData.dark(
      scheme: FlexScheme.indigo,
      surfaceMode: FlexSurfaceMode.highBackgroundLowScaffold,
      blendLevel: 2,
      appBarStyle: FlexAppBarStyle.background,
      bottomAppBarElevation: 2.0,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 8,
        useTextTheme: true,
        useM2StyleDividerInM3: true,
        adaptiveSplash: FlexAdaptive.all(),
        splashType: FlexSplashType.inkSparkle,
        splashTypeAdaptive: FlexSplashType.inkSparkle,
        adaptiveElevationShadowsBack: FlexAdaptive.all(),
        adaptiveAppBarScrollUnderOff: FlexAdaptive.excludeWebAndroidFuchsia(),
        adaptiveRadius: FlexAdaptive.all(),
        defaultRadiusAdaptive: 15.0,
        elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
        elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
        outlinedButtonOutlineSchemeColor: SchemeColor.primary,
        toggleButtonsBorderSchemeColor: SchemeColor.primary,
        segmentedButtonSchemeColor: SchemeColor.primary,
        segmentedButtonBorderSchemeColor: SchemeColor.primary,
        unselectedToggleIsColored: true,
        sliderValueTinted: true,
        inputDecoratorSchemeColor: SchemeColor.primary,
        inputDecoratorBackgroundAlpha: 22,
        inputDecoratorUnfocusedHasBorder: false,
        inputDecoratorFocusedBorderWidth: 1.0,
        inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
        fabUseShape: true,
        fabAlwaysCircular: true,
        fabSchemeColor: SchemeColor.tertiary,
        cardRadius: 14.0,
        popupMenuRadius: 6.0,
        popupMenuElevation: 3.0,
        alignedDropdown: true,
        dialogRadius: 18.0,
        useInputDecoratorThemeInDialogs: true,
        appBarScrolledUnderElevation: 3.0,
        drawerElevation: 1.0,
        drawerIndicatorSchemeColor: SchemeColor.primary,
        bottomSheetRadius: 18.0,
        bottomSheetElevation: 2.0,
        bottomSheetModalElevation: 4.0,
        bottomNavigationBarMutedUnselectedLabel: false,
        bottomNavigationBarMutedUnselectedIcon: false,
        menuRadius: 6.0,
        menuElevation: 3.0,
        menuBarRadius: 0.0,
        menuBarElevation: 1.0,
        menuBarShadowColor: Color(0x00000000),
        navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
        navigationBarMutedUnselectedLabel: false,
        navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
        navigationBarMutedUnselectedIcon: false,
        navigationBarIndicatorSchemeColor: SchemeColor.primary,
        navigationBarIndicatorOpacity: 1.00,
        navigationBarElevation: 1.0,
        navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
        navigationRailMutedUnselectedLabel: false,
        navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
        navigationRailMutedUnselectedIcon: false,
        navigationRailIndicatorSchemeColor: SchemeColor.primary,
        navigationRailIndicatorOpacity: 1.00,
        navigationRailBackgroundSchemeColor: SchemeColor.surface,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }
}
