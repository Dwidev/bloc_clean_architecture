import 'package:injectable/injectable.dart';

import '../../../../core/api_handler/result.dart';
import '../../../../core/error_handler/failure.dart';
import '../entities/news.dart';
import '../repos/news_repo.dart';

@lazySingleton
class GetNewsList {
  final NewsRepo newsRepo;

  GetNewsList({
    required this.newsRepo,
  });

  Future<Result<List<News>, Failure>> call() async {
    try {
      final listNews = <News>[];

      final response = await newsRepo.getNewsList();

      for (final news in response.articles) {
        listNews.add(
          News(
            source: news.source.name,
            author: news.author,
            title: news.title,
            description: news.description,
            url: news.url,
            urlToImage: news.urlToImage,
            publishedAt: news.publishedAt,
            content: news.content,
          ),
        );
      }

      print("KE USECASE $listNews");
      return Success(listNews);
    } catch (e) {
      print("ERROR KESINI GA");
      return Error(GlobalFailure(e.toString()));
    }
  }
}
