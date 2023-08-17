import 'package:dio/dio.dart';
import 'package:edspert_ichsan_nugraha/data/datasources/book_remote_datasource.dart';
import 'package:edspert_ichsan_nugraha/data/repositories/book_repository_impl.dart';
import 'package:edspert_ichsan_nugraha/domain/usecase/get_all_new_books_usecase.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/course/controller/course_controller.dart';
import 'package:edspert_ichsan_nugraha/presentation/widgets/courselist_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoursePage extends StatelessWidget {
  CoursePage({super.key});

  final courseController = CourseController(
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
      appBar: AppBar(
        title: const Text('Pilih Pelajaran'),
      ),
      body: GetBuilder<CourseController>(
        init: courseController,
        initState: (_) => courseController.getAllNewBooks(),
        builder: (controller) {
          return ListView.builder(
            itemCount: controller.listBooks.value.length,
            itemBuilder: (context, index) {
              final book = controller.listBooks.value[index];

              return Column(
                children: [
                  CourselistContainer(
                    courseTitle: book.title,
                    courseSubtitle: book.subtitle,
                    courseImg: book.image,
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
