import 'package:amanah_optikal/common/constant.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultBorderRadius),
      child: SizedBox(
        width: 200,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: darkBackgorundColor,
          ),
          onPressed:onPressed,
          child: Text(
            text,
            style: primaryTextStyle.copyWith(
              fontWeight: bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
