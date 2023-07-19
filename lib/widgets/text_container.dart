import 'package:edspert_ichsan_nugraha/widgets/styled_text.dart';
import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({
    super.key,
    required this.containerText,
  });

  final String containerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(
      //   left: 12,
      //   right: 12,
      // ),
      height: 50,
      alignment: Alignment.centerLeft,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 0.5,
            color: Color(0xFFD6D6D6),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: StyledText(
            text: containerText,
            alignment: TextAlign.start,
            textColor: Colors.black,
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
