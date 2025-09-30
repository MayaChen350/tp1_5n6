import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  final String label;
  final DateTime? initialDate;
  final ValueChanged<DateTime> onDateSelected;

  const DatePicker({
    super.key,
    required this.label,
    this.initialDate,
    required this.onDateSelected,
  });

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime? selectedDate;

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: widget.initialDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() => selectedDate = picked);
      widget.onDateSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickDate,
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: widget.label,
          border: const OutlineInputBorder(),
        ),
        child: Text(
          selectedDate != null
              ? '${selectedDate!.toLocal()}'.split(' ')[0]
              : 'Choisir une date',
        ),
      ),
    );
  }
}
