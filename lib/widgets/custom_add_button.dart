import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.buttonType});
  final String? buttonType;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        height: 60,
        width: double.infinity,
        child: Text(
          buttonType!,
          style: const TextStyle(
              color: Color(0xff2E2E2E),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
