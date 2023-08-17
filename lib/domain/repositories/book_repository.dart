import 'package:edspert_ichsan_nugraha/data/model/book_model.dart';
import 'package:edspert_ichsan_nugraha/data/model/detail_book_model.dart';

// ngejagain list of methods yang akan dimiliki
abstract class BookRepository{
  Future<List<BookModel>> getAllNewBooks();

  Future<DetailBookModel> getDetailBook(String isbn13);
}