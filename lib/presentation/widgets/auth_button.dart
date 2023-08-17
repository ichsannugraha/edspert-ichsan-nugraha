import 'package:edspert_ichsan_nugraha/presentation/screen/biodata/page/biodata_page.dart';
import 'package:flutter/material.dart';
import 'package:edspert_ichsan_nugraha/presentation/widgets/styled_text.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.iconPath,
    required this.buttonText,
    required this.buttonColor,
    required this.borderColor,
    required this.textColor,
  });

  final String iconPath;
  final String buttonText;
  final Color buttonColor;
  final Color borderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BiodataPage()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        shadowColor: Colors.black,
        elevation: 7,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.5, color: borderColor),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(iconPath),
            const SizedBox(width: 16),
            StyledText(
              text: buttonText,
              alignment: TextAlign.center,
              textColor: textColor,
              fontSize: 17,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
