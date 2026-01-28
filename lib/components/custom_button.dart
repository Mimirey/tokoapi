import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: size.width * 0.72,   
        height: size.height * 0.10, 
        decoration: BoxDecoration(
          color: const Color(0xFF7FBC95),
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: const Color(0xFF1E1E1E),
            width: 3,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: size.width * 0.045, 
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
