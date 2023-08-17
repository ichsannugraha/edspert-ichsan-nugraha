import 'package:flutter/material.dart';

class PaketKosong extends StatelessWidget {
  const PaketKosong({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(15,60,15,15),
        child: Column(
          children: [
            Image.asset('assets/images/ic_paket_kosong.png'),
            Text('Yah, Paket tidak tersedia'),
            Text('Tenang, masih banyak yang bisa kamu pelajari. Cari lagi yuk!'),
          ],
        ),
      ),
    );
  }
}