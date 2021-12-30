import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final TextInputType? keyboardType;
  final TextStyle? style;
  final TextDirection? textDirection;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final String? labelText;
  final TextStyle? labelStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;
  final int? maxLength;
  final TextEditingController? controller;
  final Function(String?)? onChanged;
  const CustomField({
    Key? key,
    this.keyboardType = TextInputType.number,
    this.style,
    this.textDirection,
    this.textAlign = TextAlign.start,
    this.textAlignVertical = TextAlignVertical.center,
    this.labelText,
    this.labelStyle,
    this.hintText,
    this.hintStyle,
    this.borderRadius = 14,
    this.borderColor = Colors.white,
    this.borderWidth = 2,
    this.onChanged,
    this.controller,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: labelStyle,
        hintText: hintText,
        hintStyle: hintStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor, width: borderWidth),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor, width: borderWidth),
        ),
      ),
      style: style,
      maxLength: maxLength ?? 3,
      textDirection: textDirection,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      onChanged: onChanged,
    );
  }
}
