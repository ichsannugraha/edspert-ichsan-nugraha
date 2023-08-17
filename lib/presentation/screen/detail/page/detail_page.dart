import 'package:dio/dio.dart';
import 'package:edspert_ichsan_nugraha/data/datasources/book_remote_datasource.dart';
import 'package:edspert_ichsan_nugraha/data/repositories/book_repository_impl.dart';
import 'package:edspert_ichsan_nugraha/domain/usecase/get_detail_book_usecase.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/detail/controller/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  final String isbn13;

  DetailPage({super.key, required this.isbn13});

  final detailController = DetailController(
    getDetailBookUsecase: GetDetailBookUsecase(
      repository: BookRepositoryImpl(
        remoteDatasource: BookRemoteDatasource(client: Dio()),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<DetailController>(
          init: detailController,
          initState: (_) => detailController.getDetailBook(isbn13),
          builder: (controller) {
            final detailBook = controller.detailBook.value;
      
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(detailBook.image ?? 'No Image'),
                Text(detailBook.title ?? ''),
                Text(detailBook.subtitle ?? ''),
                Text(detailBook.authors ?? ''),
                Text(detailBook.desc ?? ''),
              ],
            );
          }),
      ),
    );
  }
}
