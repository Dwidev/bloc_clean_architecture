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

    final res = {
      "status": "ok",
      "totalResults": 66211,
      "articles": [
        {
          "source": {"id": "asda", "name": "Lifehacker.com"},
          "author": "Lindsey Ellefson",
          "title": "How to Fake Like You Know What's Going on In the Olympics",
          "description":
              "Did you know the summer Olympics include competitions in canoeing, BMX racing, handball, trampoline, and judo? Maybe you didn’t, but fans of those sports definitely do, and you might encounter those big brains and need to play along.Read more...",
          "url":
              "https://lifehacker.com/how-to-fake-like-you-know-whats-going-on-in-the-olympic-1847395267",
          "urlToImage":
              "https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/31d3c18397ec37fb4a283135c34cb1e6.jpg",
          "publishedAt": "2021-07-30T20:00:00Z",
          "content":
              "Did you know the summer Olympics include competitions in canoeing, BMX racing, handball, trampoline, and judo? Maybe you didnt, but fans of those sports definitely do, and you might encounter those b… [+4795 chars]"
        },
      ]
    };

    return NewsListResponseModel.fromMap(response.data);
  }
}
