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
      margin: const EdgeInsets.only(
        top: 10,
        right: 25,
        left: 25,
      ),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.all(12.0),
          child: PoppinsText(
            text: text,
            fontS: 16,
            textOverflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        trailing: Builder(
          builder: (context) => IconButton(
            onPressed: () => showPopover(
              direction: PopoverDirection.top,
              width: 100,
              height: 100,
              context: context,
              bodyBuilder: (context) => NoteSettings(
                onEditTap: onEditPressed,
                onDeleteTap: onDeletePressed,
              ),
              backgroundColor: Theme.of(context).colorScheme.background,
            ),
            icon: const Icon(Icons.more_vert),
          ),
        ),
      ),
    );
  }
}
