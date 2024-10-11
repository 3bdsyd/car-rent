import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:office_app/core/utils/constants/app_import.dart';

class CustomTextField extends StatelessWidget {
  final bool? enabled;
  final String hintText;
  final String label;
  final SvgPicture? icon;
  final bool? obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final List<String>? autofillHints;
  final TextInputType? textInputType;
  final TextEditingController controller;
  final Function()? suffixFunction;
  final Function(String value)? onChanged;
  final Function(String value)? validator;
  final bool? showBorder;
  final int? maxLines;

  const CustomTextField({
    super.key,
    this.enabled,
    this.hintText = '',
    this.obscureText,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixFunction,
    this.onChanged,
    this.autofillHints,
    this.textInputType,
    required this.controller,
    this.validator,
    this.showBorder,
    this.maxLines,
    required this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            if (icon != null) ...[
              icon!,
              const SizedBox(width: 4),
            ],
            Text(
              label,
              style: TextStyles.style14.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        TextFormField(
          autofocus: true,
          maxLines: maxLines ?? 1,
          enabled: enabled,
          obscureText: obscureText ?? false,
          keyboardType: textInputType,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            color: ColorName.downriver,
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller,
          autofillHints: autofillHints,
          cursorColor: ColorName.downriver,
          cursorOpacityAnimates: true,
          textInputAction: TextInputAction.next,
          cursorWidth: BorderSide.strokeAlignOutside,
          mouseCursor: MaterialStateMouseCursor.textable,
          cursorRadius: const Radius.circular(12),
          validator: validator != null ? (value) => validator!(value!) : null,
          decoration: _inputDecoration(),
          onChanged: onChanged != null ? (value) => onChanged!(value) : null,
          textAlignVertical: TextAlignVertical.center,
        ),
      ],
    );
  }

  //* Defines the InputDecoration for the TextFormField.
  InputDecoration _inputDecoration() => InputDecoration(
        alignLabelWithHint: true,
        hintText: hintText,
        fillColor: ColorName.white,
        contentPadding: const EdgeInsets.all(12),
        hintFadeDuration: const Duration(milliseconds: 400),
        prefixIcon: prefixIcon,
        filled: true,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w300,
          color: ColorName.downriver.withOpacity(.25),
        ),
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: suffixFunction,
                icon: suffixIcon ?? const Text(''),
              )
            : null,
        border: _outlineInputBorder(),
        focusedBorder: _outlineInputBorder(),
        enabledBorder: _outlineInputBorder(),
        disabledBorder: _outlineInputBorder(),
        errorBorder: _outlineInputBorder(),
      );

  //* This method creates a rounded border with optional customization based on
  OutlineInputBorder _outlineInputBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: showBorder ?? true
            ? BorderSide(color: ColorName.downriver.withOpacity(.15))
            : BorderSide.none,
      );
}
