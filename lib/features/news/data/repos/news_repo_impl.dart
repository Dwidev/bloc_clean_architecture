import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repos/news_repo.dart';
import '../model/news_model.dart';

@LazySingleton(as: NewsRepo)
class NewsRepoImple implements NewsRepo {
  final Dio dio;

  NewsRepoImple({
    required this.dio,
  });

  @override
  Future<NewsListResponseModel> getNewsList() async {
    var url = "https://newsapi.org/v2/everything";
    url += "?q=sports&";
    url += "apiKey=a666d5ded77941e3a8f63c244c0775a2";

    final response = await dio.get(url);

    return NewsListResponseModel.fromMap(response.data);
  }
}
