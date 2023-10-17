import 'package:better_ui/better_ui.dart';

ThemeData betterDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    splashColor: BetterDarkColors.transparent,
    highlightColor: Colors.transparent,
    textTheme: MobileTextTheme.theme(base),
    brightness: Brightness.dark,
    dividerTheme: DividerThemeData(
      space: 0,
      thickness: 0.5,
      color: BetterDarkColors.borderPrimary!,
    ),
    iconTheme: IconThemeData(
      color: BetterDarkColors.iconPrimary,
      size: 24.0,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: BetterDarkColors.bgPrimary,
      contentTextStyle: TextStyle(
        color: BetterDarkColors.textPrimary,
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
      fillColor: const Color(0xFF2D2D2F),
      hoverColor: BetterDarkColors.gray[400],
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
        color: BetterDarkColors.textPrimary,
        height: 1.5,
      ),
      hintStyle: TextStyle(
        fontSize: 15.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
        color: BetterDarkColors.textSecondary,
        height: 1.5,
      ),
      labelStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: BetterDarkColors.textPrimary,
        height: 1.5,
      ),
      prefixStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: BetterDarkColors.colorScheme.secondaryContainer,
        height: 1.5,
      ),
      suffixStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: BetterDarkColors.colorScheme.secondaryContainer,
        height: 1.5,
      ),
    ),
    colorScheme: BetterDarkColors.colorScheme,
    cardTheme: CardTheme(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      ),
      elevation: 0.0,
      color: BetterDarkColors.colorScheme.secondary,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: BetterDarkColors.bgPrimary,
      modalBackgroundColor: BetterDarkColors.bgPrimary,
      modalElevation: 0.5,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(kLargeBorderRadius),
        ),
      ),
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: BetterDarkColors.blue),
    appBarTheme: AppBarTheme(
      color: BetterColors.transparent,
      foregroundColor: BetterColors.transparent,
      titleTextStyle: MobileTextTheme.theme(base).headlineMedium,
      toolbarTextStyle: MobileTextTheme.theme(base).headlineSmall,
      elevation: 0.0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: BetterDarkColors.colorScheme.secondaryContainer,
      selectedItemColor: base.primaryColor,
      selectedLabelStyle: MobileTextTheme.theme(base)
          .bodyMedium
          ?.copyWith(fontWeight: FontWeight.w500),
      unselectedLabelStyle: MobileTextTheme.theme(base)
          .bodyMedium
          ?.copyWith(fontWeight: FontWeight.w500),
      backgroundColor: BetterDarkColors.bgCanvasMobile,
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: BetterDarkColors.blue,
    //errorColor: BetterDarkColors.bgDangerInverse,
    canvasColor: BetterDarkColors.bgCanvasMobile,
    //backgroundColor: BetterDarkColors.bgPrimary,
    scaffoldBackgroundColor: BetterDarkColors.bgCanvasMobile,
    dividerColor: BetterDarkColors.borderPrimary!,
  );
}
