import 'package:dio/dio.dart';
import 'package:edspert_ichsan_nugraha/data/datasources/book_remote_datasource.dart';
import 'package:edspert_ichsan_nugraha/data/repositories/book_repository_impl.dart';
import 'package:edspert_ichsan_nugraha/domain/usecase/get_all_new_books_usecase.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/course/page/course_page.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/detail/page/detail_page.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/detail/page/detail_page2.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/edit_profile/page/edit_profile_page.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/home/controller/home_controller.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/profile/page/profile_page.dart';
import 'package:edspert_ichsan_nugraha/presentation/widgets/courselist_container.dart';
import 'package:edspert_ichsan_nugraha/presentation/widgets/styled_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final homeController = HomeController(
    getAllNewBooksUsecase: GetAllNewBooksUsecase(
      repository: BookRepositoryImpl(
        remoteDatasource: BookRemoteDatasource(client: Dio()),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7F8),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
            //width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Get.to(EditProfilePage()),
                      child: const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Hai, Altop\n',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'Selamat Datang',
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
                const SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 152,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF3A7FD5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('MAU BELAJAR APA HARI INI'),
                      Image.asset(
                        'assets/images/ic_home_main.png',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const StyledText(
                      text: 'Pilih Pelajaran',
                      alignment: TextAlign.center,
                      textColor: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                    TextButton(
                      onPressed: () => Get.to(CoursePage()),
                      child: const Text('Liat Semua'),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 335,
            //padding: const EdgeInsets.only(left: 30, right: 30),
            child: GetBuilder<HomeController>(
                // menginisial controller kita
                init: homeController,
                // biar pertama diakses langsung ngejalanin fungsi
                initState: (_) => homeController.getAllNewBooks(),
                builder: (controller) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.listBooks.value.length,
                    itemBuilder: (context, index) {
                      final book = controller.listBooks.value[index];

                      return InkWell(
                        onTap: () =>
                            Get.to(DetailPage(isbn13: book.isbn13 ?? '')),
                        child: CourselistContainer(
                          courseTitle: book.title ?? 'No Title',
                          courseSubtitle: book.subtitle ?? 'No Subtitle',
                          courseImg: book.image,
                        ),
                      );
                    },
                  );
                }),
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                width: MediaQuery.of(context).size.width,
                child: const StyledText(
                  text: 'Terbaru',
                  alignment: TextAlign.end,
                  textColor: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
              ElevatedButton(
                onPressed: () => Get.to(DetailPage2()),
                child: Text('Detail Page 2'),
              ),
            ],
          ),
        ],
      ),

      // GetBuilder<HomeController>(
      //     // menginisial controller kita
      //     init: homeController,
      //     // biar pertama diakses langsung ngejalanin fungsi
      //     initState: (_) => homeController.getAllNewBooks(),
      //     builder: (controller) {
      //       return ListView.builder(
      //         shrinkWrap: true,
      //         itemCount: controller.listBooks.value.length,
      //         itemBuilder: (context, index) {
      //           final book = controller.listBooks.value[index];

      //           return Column(
      //             children: [
      //               CourselistContainer(
      //                 courseTitle: book.title ?? 'No Title',
      //                 courseSubtitle: book.subtitle ?? 'No Subtitle',
      //                 courseImg: Image.asset('assets/images/apple-logo.png'),
      //               ),
      //             ],
      //           );
      //         },
      //       );
      //     }),
    );
  }
}
