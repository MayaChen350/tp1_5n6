import 'package:flutter/material.dart';

// TODO: Beautifulize this
class InputField extends StatefulWidget {
  final String title;
  final double size;
  final ValueChanged<String> valueChanged;

  const InputField({
    super.key,
    required this.title,
    this.size = 20,
    required this.valueChanged,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        labelText: widget.title,
        border: const OutlineInputBorder(),
      ),
      child: TextField(
        onChanged: (value) {
          widget.valueChanged(value);
        },
      ),
    );

    // return Column(
    //   children: [
    //     Text(title, style: TextStyle(fontSize: size)),
    //     TextField()
    //   ],
    // );
  }
}
