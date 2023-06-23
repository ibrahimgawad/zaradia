import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.onChanged,
      this.validator,
      required this.lableText,
      this.keyboardType,
      this.suffixIcon,
      this.textInputAction});
  final Function(String?) onChanged;
  final String? Function(String?)? validator;
  final String lableText;

  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: validator,
        style: const TextStyle(fontSize: 15),
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsetsDirectional.symmetric(vertical: 5, horizontal: 15),
          labelText: lableText,
          labelStyle: const TextStyle(
            color: Colors.white,
          ),
          border: bulidBorder(0),
          enabledBorder: bulidBorder(0),
          focusedBorder: bulidBorder(2.5),
        ));
  }

  OutlineInputBorder bulidBorder(double width) {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: width,
        ),
        borderRadius: BorderRadius.circular(10));
  }
}
