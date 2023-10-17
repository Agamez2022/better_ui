import 'package:better_ui/better_ui.dart';

class BetterUI extends StatelessWidget {
  const BetterUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BetterApp(
      title: 'BetterUI',
      home: Home(),
      primaryLightColor: BetterColors.blue,
      primaryDarkColor: BetterDarkColors.blue,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BetterScaffold(
      body: Column(
        children: [
          ViewHeaderTwo(
            title: 'BetterUI',
          )
        ],
      ),
    );
  }
}
