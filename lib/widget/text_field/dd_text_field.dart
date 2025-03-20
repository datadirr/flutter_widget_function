import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// [DDTextField] easy to customize TextField widget
class DDTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final String? prefixText;
  final String? suffixText;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final TextAlign textAlign;
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputFormatters;
  final bool readOnly;
  final bool enabled;
  final bool border;
  final Function()? onTap;
  final Function(String value)? onChanged;
  final Function(String? value)? onSaved;
  final bool capitalize;

  const DDTextField({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.prefixText,
    this.suffixText,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.textAlign = TextAlign.start,
    this.inputType,
    this.inputFormatters,
    this.readOnly = false,
    this.enabled = true,
    this.border = true,
    this.onTap,
    this.onChanged,
    this.onSaved,
    this.capitalize = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      onChanged: (value) {
        if (onChanged != null) {
          onChanged!(value);
        }
      },
      onSaved: (value) {
        if (onSaved != null) {
          onSaved!(value);
        }
      },
      textCapitalization:
          capitalize ? TextCapitalization.characters : TextCapitalization.none,
      controller: controller,
      minLines: minLines,
      maxLines: maxLines,
      maxLength: maxLength,
      textAlign: textAlign,
      keyboardType: inputType,
      inputFormatters: inputFormatters,
      readOnly: readOnly,
      enabled: enabled,
      decoration: InputDecoration(
        border: border ? const OutlineInputBorder() : null,
        labelText: labelText,
        hintText: hintText,
        prefixText: prefixText,
        suffixText: suffixText,
      ),
    );
  }
}
