import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end, // Align at the bottom
      crossAxisAlignment: CrossAxisAlignment.start, // Align text to left
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: InputBorder.none,
              fillColor: Colors.black,
              filled: true,
            ),
            style: const TextStyle(
              fontSize: 50,
              color: Colors.white, // Ensure white text for contrast
            ),
            readOnly: true, // To make it non-editable
            textAlign: TextAlign.right, // Align text to the right
            textDirection: TextDirection.ltr, // Text flows from left to right
            showCursor: true,
          ),
        ),
      ],
    );
  }
}
