import '../../data/model/news_model.dart';

/// Class ini di gunakan untuk kontrak antara usecase dan repository
abstract class NewsRepo {
  Future<NewsListResponseModel> getNewsList();
}
