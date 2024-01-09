import 'package:flutter/material.dart';
import 'package:notes/components/note_settings.dart';
import 'package:notes/components/text_format.dart';
import 'package:popover/popover.dart';

class NoteTile extends StatelessWidget {
  final String text;
  final void Function()? onEditPressed;
  final void Function()? onDeletePressed;

  const NoteTile({
    super.key,
    required this.text,
    required this.onEditPressed,
    required this.onDeletePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(
        top: 10,
        right: 25,
        left: 25,
      ),
      child: ListTile(
        title: PoppinsText(
          text: text,
          fontS: 16,
        ),
        trailing: Builder(
          builder: (context) => IconButton(
            onPressed: () => showPopover(
              width: 100,
              height: 100,
              context: context,
              bodyBuilder: (context) => NoteSettings(
                onEditTap: onEditPressed,
                onDeleteTap: onDeletePressed,
              ),
              backgroundColor: Theme.of(context).colorScheme.background,
            ),
            icon: Icon(Icons.more_vert),
          ),
        ),
      ),
    );
  }
}
