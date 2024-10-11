import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.borderSide,
    required this.onTap,
    required this.body,
  });
  final Color backgroundColor;
  final Color foregroundColor;
  final BorderSide borderSide;
  final Function() onTap;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(backgroundColor),
          foregroundColor: WidgetStatePropertyAll(foregroundColor),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: borderSide,
            ),
          ),
        ),
        child: body,
      ),
    );
  }
}
