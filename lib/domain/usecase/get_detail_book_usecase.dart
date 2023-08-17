import 'package:edspert_ichsan_nugraha/data/model/detail_book_model.dart';
import 'package:edspert_ichsan_nugraha/domain/repositories/book_repository.dart';

class GetDetailBookUsecase {
  final BookRepository repository;
  const GetDetailBookUsecase({required this.repository});

  Future<DetailBookModel> call(isbn13) async =>
      await repository.getDetailBook(isbn13);
}
