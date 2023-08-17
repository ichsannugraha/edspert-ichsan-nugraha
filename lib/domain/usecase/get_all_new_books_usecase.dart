import 'package:edspert_ichsan_nugraha/data/model/book_model.dart';
import 'package:edspert_ichsan_nugraha/domain/repositories/book_repository.dart';

class GetAllNewBooksUsecase {
  final BookRepository repository;
  const GetAllNewBooksUsecase({required this.repository});

  Future<List<BookModel>> call() async => await repository.getAllNewBooks();
}
