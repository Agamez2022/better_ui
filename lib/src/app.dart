import 'package:better_ui/better_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Consumer widget with MaterialApp built in that implements
/// themes and other components
class BetterApp extends StatelessWidget {
  final String? title;
  final Widget? home;
  final Color? primaryLightColor;
  final Color? primaryDarkColor;
  final Color primaryLightVariantColor;
  final Color primaryDarkVariantColor;
  final List<NavigatorObserver>? navigatorObservers;
  final Widget Function(BuildContext, Widget?)? builder;
  final ThemeData? lightTheme, darkTheme;

  const BetterApp({
    Key? key,
    required this.title,
    required this.home,
    required this.primaryLightColor,
    required this.primaryDarkColor,
    this.primaryLightVariantColor = BetterColors.blue,
    this.primaryDarkVariantColor = BetterDarkColors.blue,
    this.navigatorObservers,
    this.builder,
    this.lightTheme,
    this.darkTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final repo = ref.watch(themeProvider);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title!,
          themeMode: repo.themeMode,
          navigatorObservers: navigatorObservers ?? [],
          theme: lightTheme ??
              betterLightTheme().copyWith(
                primaryColor: primaryLightColor,
                colorScheme: betterLightTheme()
                    .colorScheme
                    .copyWith(primaryContainer: primaryLightVariantColor),
              ),
          darkTheme: darkTheme ??
              betterDarkTheme().copyWith(
                primaryColor: primaryDarkColor,
                colorScheme: betterDarkTheme()
                    .colorScheme
                    .copyWith(primaryContainer: primaryDarkVariantColor),
              ),
          home: home,
          builder: builder,
        );
      },
    );
  }
}
