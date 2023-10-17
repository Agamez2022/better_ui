import 'package:better_ui/better_ui.dart';

class BetterArrowButton extends StatelessWidget {
  const BetterArrowButton({Key? key, required this.view}) : super(key: key);

  final Widget view;

  @override
  Widget build(BuildContext context) {
    return BetterActionButton(
      padding: EdgeInsets.zero,
      alignment: MainAxisAlignment.end,
      icon: Icon(
        Iconsax.arrow_right_2,
        size: 20,
        color: Theme.of(context).primaryColor,
      ),
      onPressed: () {
        BetterMethods.viewTransition(context, view);
      },
    );
  }
}
