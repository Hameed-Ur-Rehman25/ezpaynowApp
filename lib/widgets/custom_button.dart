import 'package:ezpaynow/utils/color_pallete.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed; // Function variable for button action
  final Color backgroundColor; // Variable for background color

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed, // Accepting the function as a parameter
    required this.backgroundColor, // Default background color
  });

  @override
  Widget build(BuildContext context) {
    // Determine text color based on the background color
    Color textColor = (backgroundColor == ColorPalette.buttonBackground)
        ? Colors.white
        : Colors.black;

    return Container(
      decoration: BoxDecoration(
        border: (backgroundColor == Colors.white)
            ? Border.all(
                color: ColorPalette.buttonBackground,
                width: 2) // Outline color when background is white
            : null, // No border when background is not white
        borderRadius: BorderRadius.circular(10), // Same border radius as button
      ),
      child: TextButton(
        onPressed: onPressed, // Using the passed function
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          minimumSize: const Size(270, 50),
          backgroundColor: backgroundColor, // Using the passed background color
          foregroundColor: textColor, // Using the determined text color
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
