import 'package:edspert_ichsan_nugraha/presentation/screen/profile/page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String? selectedValue = 'pilih jenis kelamin';

  TextEditingController nmController = TextEditingController();
  TextEditingController kelasController = TextEditingController();
  TextEditingController sekolahController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Edit Akun'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Data Diri'),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: nmController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Masukkan nama lengkap anda',
                  labelText: 'Nama Lengkap',
                  labelStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'nugraha.ichsan99@gmail.com',
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
            //untuk dropdown
            Container(
              height: 55,
              margin: EdgeInsets.only(left: 15, right: 15),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 0.5,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(4),
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
                  items: ['pilih jenis kelamin', 'Laki-laki', 'Perempuan']
                      .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                            child: Text(e.toString()),
                            value: e,
                          ))
                      .toList()),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: kelasController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '',
                  labelText: 'Kelas',
                  labelStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: sekolahController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '',
                  labelText: 'Sekolah',
                  labelStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.off(ProfilePage());
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
