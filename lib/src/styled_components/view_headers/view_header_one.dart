import 'package:better_ui/better_ui.dart';

/// Adds one button to the right side with a large title
class ViewHeaderOne extends StatelessWidget {
  final String? title;
  final Widget? button;

  // ignore: use_key_in_widget_constructors
  const ViewHeaderOne({this.title, this.button});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title!,
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: Theme.of(context).colorScheme.primary),
        ),
        const Spacer(),
        button ??
            BetterHeaderButton(
              backgroundColor: BetterColors.transparent,
              icon: Container(),
              onPressed: () {},
            ),
      ],
    );
  }
}
