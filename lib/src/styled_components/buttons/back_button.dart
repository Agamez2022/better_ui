import '../../../better_ui.dart';

/// isClear function will remove gray rectangle background
class BetterBackButton extends StatelessWidget {
  final bool? isClear;
  final void Function()? onPressed;
  const BetterBackButton({Key? key, this.isClear, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BetterPrimaryButton(
      color: [null, false].contains(isClear)
          ? Theme.of(context).colorScheme.secondary
          : BetterColors.transparent,
      containerHeight: 60.0,
      containerWidth: 60.0,
      borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      padding: EdgeInsets.zero,
      prefixIcon: Icon(
        Iconsax.arrow_left_3,
        color: [null, false].contains(isClear)
            ? Theme.of(context).colorScheme.secondaryContainer
            : Theme.of(context).primaryColor,
        size: 27,
      ),
      alignment: [null, false].contains(isClear)
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      onPressed: onPressed ?? () => Navigator.of(context).pop(),
    );
  }
}
