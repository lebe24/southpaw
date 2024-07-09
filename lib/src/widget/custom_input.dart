import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({super.key, required this.textController});
  final TextEditingController textController ;


  @override
  Widget build(BuildContext context) {

    return TextField(
        controller: textController,
        decoration: InputDecoration(
          hintText: 'Enter Email',
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(8), // Optional: adjusts the padding inside the text field
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black), // Border color
            borderRadius: BorderRadius.circular(10.0), // Border radius
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black), // Border color when the TextField is enabled
            borderRadius: BorderRadius.circular(10.0), // Border radius
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2), // Border color when the TextField is focused
            borderRadius: BorderRadius.circular(10.0), // Border radius
          ),
        ),
    );
  }
}