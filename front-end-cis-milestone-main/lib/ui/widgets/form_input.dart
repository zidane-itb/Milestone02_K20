import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class FormInput extends StatelessWidget {
  const FormInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kBlackColor,
      decoration: InputDecoration(
          fillColor: kWhiteColor,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: const BorderSide(color: kBlackColor))),
    );
  }
}
