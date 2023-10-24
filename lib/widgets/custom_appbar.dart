import 'package:flutter/material.dart';
import 'package:notesapp/widgets/cutom_icon.dart';

class CutsomAppBar extends StatelessWidget {
  const CutsomAppBar({
    super.key,
    required this.icon,
    this.onPressed,
    this.appBarTitle,
  });

  final IconData icon;
  final void Function()? onPressed;
  final Widget? appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        appBarTitle!,
        const Spacer(),
        CustomIcon(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
