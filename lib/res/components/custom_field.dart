
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color.dart';
import '../constants/styles.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required TextEditingController nameController,
    required this.inputType,
    this.obscureText = false,
    required this.validator,
  }) : _nameController = nameController;

  final TextEditingController _nameController;
  final TextInputType inputType;
  final bool obscureText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      decoration: InputDecoration(
        filled: true,

        fillColor: AppColors.textFieldBgColor,
        border: Styles().texFormStyle(),
      ),
      validator: validator ,
      controller: _nameController,
    );
  }
}