import 'package:edspert_ichsan_nugraha/presentation/screen/edit_profile/page/edit_profile_page.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/home/page/home_page.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/navbar/page/navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () => Get.to(EditProfilePage()),
            child: const Text(
              'Edit',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: const Text('Akun Saya'),
      ),
      body: Container(
        color: const Color(0xFFF3F7F8),
        child: Column(
          children: [
            Container(
              height: 170,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Get.to(EditProfilePage()),
                    child: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Ichsan Nugraha\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'UNIKOM',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.to(EditProfilePage()),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image:
                              AssetImage('assets/images/ic_profile_pict.png'),
                          fit: BoxFit.cover,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23.50),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // container identitas diri
            Container(
              height: 329.16,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(15, 20, 11, 10),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 7,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Identitas Diri'),
                  Text('Nama Lengkap'),
                  Text('Ichsan Nugraha'),
                  Text('Email'),
                  Text('nugraha.ichsan99@gmail.com'),
                  Text('Jenis Kelamin'),
                  Text('Laki-laki'),
                  Text('Kelas'),
                  Text('Semester ??'),
                  Text('Sekolah'),
                  Text('UNIKOM'),
                ],
              ),
            ),
            // container keluar
            Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              height: 49,
              margin: EdgeInsets.only(left: 15, right: 11),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 6,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: InkWell(
                onTap: () => Get.off(NavBar()),
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.login, color: Colors.red),
                      Text('Keluar', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
