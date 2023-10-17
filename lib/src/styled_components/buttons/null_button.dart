// ignore_for_file: use_key_in_widget_constructors

import 'package:better_ui/better_ui.dart';

class BetterNullButton extends StatelessWidget {
  const BetterNullButton();

  @override
  Widget build(BuildContext context) {
    return BetterHeaderButton(
      backgroundColor: BetterColors.transparent,
      icon: Container(),
    );
  }
}
