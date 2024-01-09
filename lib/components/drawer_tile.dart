import 'package:flutter/material.dart';
import 'package:notes/components/text_format.dart';

class DrawerTile extends StatelessWidget {
  final String title;
  final Widget leading;
  final void Function()? onTap;
  const DrawerTile({
    super.key,
    required this.title,
    required this.leading,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        title: PoppinsText(
          text: title,
          fontS: 14,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        leading: leading,
        onTap: onTap,
      ),
    );
  }
}
