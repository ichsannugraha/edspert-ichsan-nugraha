import 'package:edspert_ichsan_nugraha/widgets/styled_text.dart';
import 'package:edspert_ichsan_nugraha/widgets/text_container.dart';
import 'package:edspert_ichsan_nugraha/login_page.dart';
import 'package:flutter/material.dart';

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const StyledText(
          text: 'Yuk isi data diri',
          alignment: TextAlign.start,
          textColor: Colors.black,
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: const Color(0xFFF0F3F5),
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StyledText(
              text: 'Email',
              alignment: TextAlign.start,
              textColor: Colors.black,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(height: 4),
            const TextContainer(containerText: 'nugraha.ichsan99@gmail.com'),
            const SizedBox(height: 22),
            const StyledText(
              text: 'Nama Lengkap',
              alignment: TextAlign.start,
              textColor: Colors.black,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(height: 4),
            const TextContainer(containerText: 'Ichsan Nugraha'),
            const SizedBox(height: 22),
            const StyledText(
              text: 'Jenis Kelamin',
              alignment: TextAlign.start,
              textColor: Colors.black,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(height: 4),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 170,
                  child: TextContainer(containerText: 'Laki-laki'),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 170,
                  child: Text(
                    'Perempuan',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22),
            const StyledText(
              text: 'Jurusan',
              alignment: TextAlign.start,
              textColor: Colors.black,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(height: 4),
            Container(
              height: 50,
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
              child: DropdownButton(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(left: 14),
                isExpanded: true,
                items: const [
                  DropdownMenuItem(
                    value: '1',
                    child: Text(
                      'pilih jurusan',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                  DropdownMenuItem(
                      value: '2', child: Text('Teknik Informatika')),
                ],
                value: '2',
                onChanged: (value) => const DropdownMenuItem(
                  child: Text('Flutter'),
                ),
              ),
            ),
            const SizedBox(height: 22),
            const StyledText(
              text: 'Nama Sekolah',
              alignment: TextAlign.start,
              textColor: Colors.black,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(height: 4),
            const TextContainer(containerText: 'UNIKOM'),
            const SizedBox(height: 175),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.5),
                    borderRadius: BorderRadius.circular(46),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Daftar'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
