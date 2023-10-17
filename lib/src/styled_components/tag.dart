import '../../better_ui.dart';

/// Used in tag text field
class BetterTag extends StatelessWidget {
  final Color? color;

  const BetterTag({Key? key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14,
      width: 14,
      decoration: BoxDecoration(
        border: Border.all(color: color!, width: 3),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
