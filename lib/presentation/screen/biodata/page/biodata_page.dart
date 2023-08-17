import 'package:edspert_ichsan_nugraha/presentation/screen/navbar/page/navbar.dart';
import 'package:edspert_ichsan_nugraha/presentation/widgets/styled_text.dart';
import 'package:edspert_ichsan_nugraha/presentation/widgets/text_container.dart';
import 'package:flutter/material.dart';

class BiodataPage extends StatefulWidget {
  BiodataPage({super.key});

  @override
  State<BiodataPage> createState() => _BiodataPageState();
}

class _BiodataPageState extends State<BiodataPage> {
  List<bool> isSelected = [true, false];
  //List<String?> dropDownItems = ['pillih kelas', 'flutter'];
  String? selectedValue = 'pilih kelas';
  String jenisKelamin = '';
  TextEditingController nmController = TextEditingController();
  TextEditingController nmSekolahController = TextEditingController();

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
        width: MediaQuery.of(context).size.width,
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
            Container(
              color: Colors.white,
              margin: const EdgeInsets.all(3),
              child: TextField(
                controller: nmController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'contoh: ichsan nugraha',
                  labelStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
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
            ToggleButtons(
              isSelected: isSelected,
              selectedColor: Colors.white,
              fillColor: Colors.lightBlue,
              children: const [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Laki-laki',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Perempuan',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
              onPressed: (int newIndex) {
                setState(() {
                  for (int i = 0; i < isSelected.length; i++) {
                    if (i == newIndex) {
                      isSelected[i] = true;
                      jenisKelamin = i.toString();
                    } else {
                      isSelected[i] = false;
                    }
                  }
                });
              },
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
              child: DropdownButton<String?>(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(left: 14),
                  isExpanded: true,
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  items: ['pilih kelas', 'Flutter']
                      .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                            child: Text(e.toString()),
                            value: e,
                          ))
                      .toList()),
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
            Container(
              color: Colors.white,
              margin: const EdgeInsets.all(3),
              child: TextField(
                controller: nmSekolahController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'nama sekolah',
                  labelStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 175),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavBar()),
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
