import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField(
      {this.hintText, this.onChanged, this.obscureText = false});
  Function(String)? onChanged;
  String? hintText;

  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        obscureText: obscureText!,
        validator: (data) {
          if (data!.isEmpty) {
            return 'field is required';
          }
        },
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
