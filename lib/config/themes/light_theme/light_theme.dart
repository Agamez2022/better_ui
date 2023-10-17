import 'package:better_ui/better_ui.dart';
import 'package:flutter/cupertino.dart';

ThemeData betterLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: MobileTextTheme.theme(base),
    primaryIconTheme: IconThemeData(size: 24, color: BetterColors.iconPrimary),
    brightness: Brightness.light,
    dividerTheme: DividerThemeData(
      space: 0,
      thickness: 0.5,
      color: BetterColors.borderPrimary!,
    ),
    iconTheme: IconThemeData(
      color: BetterColors.iconPrimary,
      size: 24.0,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: BetterColors.bgPrimary,
      contentTextStyle: TextStyle(
        color: BetterColors.textPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        letterSpacing: 0.0,
        height: 1.5,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // 23 for height 65, 18 for height 50
      contentPadding: const EdgeInsets.all(15),
      filled: true,
      isCollapsed: true,
      fillColor: CupertinoColors.systemGrey6,
      hoverColor: BetterColors.gray[400],
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kSmallBorderRadius),
        borderSide: const BorderSide(
          color: BetterColors.transparent,
          width: 1.5,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kSmallBorderRadius),
        borderSide: const BorderSide(
          color: BetterColors.transparent,
          width: 1.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kSmallBorderRadius),
        borderSide: const BorderSide(
          color: BetterColors.transparent,
          width: 1.5,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kSmallBorderRadius),
        borderSide: const BorderSide(
          color: BetterColors.transparent,
          width: 1.5,
        ),
      ),
      helperStyle: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w400,
        color: BetterColors.textPrimary,
        height: 1.5,
      ),
      hintStyle: TextStyle(
        fontSize: 15.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
        color: BetterColors.textSecondary,
        height: 1.5,
      ),
      labelStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: BetterColors.textPrimary,
        height: 1.5,
      ),
      prefixStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: BetterColors.colorScheme.secondaryContainer,
        height: 1.5,
      ),
      suffixStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: BetterColors.colorScheme.secondaryContainer,
        height: 1.5,
      ),
    ),
    cardTheme: CardTheme(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      ),
      elevation: 0.0,
      color: BetterColors.bgPrimary,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: BetterColors.bgPrimary,
      modalBackgroundColor: BetterColors.bgPrimary,
      modalElevation: 0.5,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(kLargeBorderRadius),
        ),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: BetterColors.blue,
    ),
    appBarTheme: AppBarTheme(
      color: BetterColors.transparent,
      foregroundColor: BetterColors.transparent,
      titleTextStyle: MobileTextTheme.theme(base).headlineMedium,
      toolbarTextStyle: MobileTextTheme.theme(base).headlineSmall,
      elevation: 0.0,
    ),
    colorScheme: BetterColors.colorScheme,
    primaryColor: BetterColors.blue,
    //errorColor: BetterColors.bgDangerInverse,
    canvasColor: BetterColors.bgCanvasMobile,
    splashColor: BetterColors.transparent,
    highlightColor: BetterColors.transparent,
    //backgroundColor: BetterColors.bgPrimary,
    scaffoldBackgroundColor: BetterColors.bgCanvas,
    dividerColor: BetterColors.borderPrimary!,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: BetterDarkColors.colorScheme.secondaryContainer,
      selectedItemColor: base.primaryColor,
      selectedLabelStyle: MobileTextTheme.theme(base)
          .bodyMedium
          ?.copyWith(fontWeight: FontWeight.w500),
      unselectedLabelStyle: MobileTextTheme.theme(base)
          .bodyMedium
          ?.copyWith(fontWeight: FontWeight.w500),
      backgroundColor: BetterColors.bgPrimary,
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
  );
}
