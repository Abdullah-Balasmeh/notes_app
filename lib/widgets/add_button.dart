import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_add_button.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            const CustomTextField(
              hint: 'Title',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomTextField(
              hint: 'Content',
              maxlines: 5,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              buttonType: 'Add',
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
