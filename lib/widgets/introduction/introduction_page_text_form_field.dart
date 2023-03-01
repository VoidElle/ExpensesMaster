import 'package:flutter/material.dart';

import '../../utils/custom_colors.dart';
import '../../utils/custom_styles.dart';

class IntroductionPageTextFormField extends StatelessWidget {

  final String hintText;
  final Function verificationCallback;

  const IntroductionPageTextFormField({
    super.key,
    required this.hintText,
    required this.verificationCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 45,
      ),
      child: TextFormField(
        cursorColor: CustomColors.kPrimaryColor,
        textAlign: TextAlign.center,
        style: CustomStyles.introductionPageFormNormal(),
        decoration: InputDecoration(
          filled: true,
          fillColor: CustomColors.kFormBackgroundColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          errorStyle: CustomStyles.introductionPageFormError(),
          hintText: hintText,
          hintStyle: CustomStyles.introductionPageFormHint(),
        ),
        validator: (String? text) => verificationCallback(text),
      ),
    );
  }

}
