import 'package:edspert_ichsan_nugraha/widgets/auth_button.dart';
import 'package:edspert_ichsan_nugraha/widgets/styled_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/analysis-isometric.png',
              width: 350,
              height: 250,
            ),
            const SizedBox(height: 56),
            const StyledText(
              text: 'Selamat Datang',
              alignment: TextAlign.center,
              textColor: Colors.black,
              fontSize: 22,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
            const StyledText(
              text:
                  'Selamat Datang di Aplikasi Widya Edu Aplikasi Latihan dan Konsultasi Soal',
              alignment: TextAlign.center,
              textColor: Color(0xFF697382),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(height: 240),
            const AuthButton(
                iconPath: 'assets/images/google-logo.png',
                buttonText: 'Masuk dengan Google',
                buttonColor: Colors.white,
                borderColor: Color(0xFF01B1AF),
                textColor: Colors.black),
            const SizedBox(height: 12),
            const AuthButton(
              iconPath: 'assets/images/apple-logo.png',
              buttonText: 'Masuk dengan Apple ID',
              buttonColor: Colors.black,
              borderColor: Color(0xFF1A1F26),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
