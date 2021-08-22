
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingFormField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final String label;
  final String? prefixText;

  OnboardingFormField({required this.label, this.prefixText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: this.label,
            hintTextDirection: TextDirection.rtl,
            prefixText: this.prefixText,
          ),
          onChanged: this.onChanged,
        ),
      ),
    );
  }
}
