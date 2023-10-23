import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.onTap, this.buttonType, this.isLoding = false});
  final String? buttonType;
  final void Function()? onTap;
  final bool isLoding;

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
        child: isLoding
            ? const CircularProgressIndicator(
                color: Color(0xff2E2E2E),
              )
            : Text(
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
