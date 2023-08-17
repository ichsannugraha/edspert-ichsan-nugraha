import 'package:dio/dio.dart';
import 'package:edspert_ichsan_nugraha/data/datasources/book_remote_datasource.dart';
import 'package:edspert_ichsan_nugraha/data/repositories/book_repository_impl.dart';
import 'package:edspert_ichsan_nugraha/domain/usecase/get_all_new_books_usecase.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/home/controller/home_controller.dart';
import 'package:edspert_ichsan_nugraha/presentation/widgets/courselist_container.dart';
import 'package:edspert_ichsan_nugraha/presentation/widgets/paket_kosong.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage2 extends StatelessWidget {
  DetailPage2({super.key});

  final detailController = HomeController(
    getAllNewBooksUsecase: GetAllNewBooksUsecase(
      repository: BookRepositoryImpl(
        remoteDatasource: BookRemoteDatasource(client: Dio()),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F7F8),
      body: GetBuilder<HomeController>(
          // menginisial controller kita
          init: detailController,
          // biar pertama diakses langsung ngejalanin fungsi
          initState: (_) => detailController.getAllNewBooks(),
          builder: (controller) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                childAspectRatio: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              shrinkWrap: true,
              itemCount: controller.listBooks.value.length,
              itemBuilder: (context, index) {
                final book = controller.listBooks.value[index];

                return InkWell(
                  onTap: () => Get.to(PaketKosong()),
                  child: Container(
                    width: 153,
                    height: 96,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          book.image ?? '',
                          height: 50,
                          width: 50,
                        ),
                        Text(book.title ?? ''),
                        Text(book.subtitle ?? ''),
                      ],
                    ),
                  ),
                  // Column(
                  //   children: [
                  //     CourselistContainer(
                  //       courseTitle: book.title ?? 'No Title',
                  //       courseSubtitle: book.subtitle ?? 'No Subtitle',
                  //       courseImg: book.image,
                  //     ),
                  //   ],
                  // ),
                );
              },
            );
          }),
    );
  }
}
