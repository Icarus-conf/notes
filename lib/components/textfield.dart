import 'package:flutter/material.dart';

class TextFieldFormat extends StatelessWidget {
  final TextEditingController? textController;
  const TextFieldFormat({
    super.key,
    this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
      maxLines: null,
      keyboardType: TextInputType.multiline,
      textAlign: TextAlign.start,
    );
  }
}
