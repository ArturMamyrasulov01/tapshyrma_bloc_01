import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final Size size;
  final IconData icon;
  final void Function()? onPressed;
  const ElevatedButtonWidget({
    required this.size,
    required this.icon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.05,
      width: size.width * 0.2,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // <-- Radius
          ),
        ),
        child: Icon(
          icon,
          size: 35,
        ),
      ),
    );
  }
}
