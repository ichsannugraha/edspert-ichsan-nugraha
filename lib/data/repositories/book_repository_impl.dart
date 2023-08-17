import 'package:edspert_ichsan_nugraha/data/datasources/book_remote_datasource.dart';
import 'package:edspert_ichsan_nugraha/data/model/book_model.dart';
import 'package:edspert_ichsan_nugraha/data/model/detail_book_model.dart';
import 'package:edspert_ichsan_nugraha/domain/repositories/book_repository.dart';

class BookRepositoryImpl implements BookRepository {
  final BookRemoteDatasource remoteDatasource;

  const BookRepositoryImpl({required this.remoteDatasource});

  @override
  Future<List<BookModel>> getAllNewBooks() async =>
      await remoteDatasource.getAllNewBooks();

  @override
  Future<DetailBookModel> getDetailBook(String isbn13) async =>
      await remoteDatasource.getDetailBook(isbn13);
}
