import 'package:edspert_ichsan_nugraha/data/model/detail_book_model.dart';
import 'package:edspert_ichsan_nugraha/domain/usecase/get_detail_book_usecase.dart';
import 'package:get/get.dart';

class DetailController extends GetxController{
  final GetDetailBookUsecase getDetailBookUsecase;
  DetailController({required this.getDetailBookUsecase});

  Rx<DetailBookModel> detailBook = Rx(DetailBookModel());

  void getDetailBook(String isbn13) async {
    final result = await getDetailBookUsecase.call(isbn13);
    detailBook(result);
    update();
  }
}