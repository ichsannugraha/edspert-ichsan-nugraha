import 'package:edspert_ichsan_nugraha/data/model/book_model.dart';
import 'package:edspert_ichsan_nugraha/domain/usecase/get_all_new_books_usecase.dart';
import 'package:get/get.dart';

class CourseController extends GetxController {
  final GetAllNewBooksUsecase getAllNewBooksUsecase;
  CourseController({required this.getAllNewBooksUsecase});

  Rx<List<BookModel>> listBooks = Rx([]);

  void getAllNewBooks() async {
    final books = await getAllNewBooksUsecase.call();
    listBooks(books);
    update();
  }
}