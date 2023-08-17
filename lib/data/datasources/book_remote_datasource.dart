import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:edspert_ichsan_nugraha/constants/constants.dart';
import 'package:edspert_ichsan_nugraha/data/model/book_model.dart';
import 'package:edspert_ichsan_nugraha/data/model/book_response_model.dart';
import 'package:edspert_ichsan_nugraha/data/model/detail_book_model.dart';

class BookRemoteDatasource {
  final Dio client;

  const BookRemoteDatasource({required this.client});

  Future<List<BookModel>> getAllNewBooks() async {
    try {
      final url = '${Constants.baseUrl}/new';

      final result = await client.get(url);

      final bookResponse = BookResponseModel.fromJson(result.data);

      return bookResponse.books ?? [];
    } catch (e) {
      log('Error at BookRemoteDatasource: ${e.toString()}');
      return [];
    }
  }

  Future<DetailBookModel> getDetailBook(String isbn13) async {
    try {
      final url = '${Constants.baseUrl}/books/$isbn13';

      final result = await client.get(url);

      final detailBookResponse = DetailBookModel.fromJson(result.data);

      return detailBookResponse;
    } catch (e) {
      log('Error at BookRemoteDatasource: ${e.toString()}');
      return DetailBookModel();
    }
  }
}
