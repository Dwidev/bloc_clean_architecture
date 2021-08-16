part of 'news_bloc.dart';

@immutable
abstract class NewsEvent {}

class NewsFetch extends NewsEvent {}

class NewsFetchSucces extends NewsEvent {
  final List<News> news;
  NewsFetchSucces({
    required this.news,
  });
}

class NewsFetchError extends NewsEvent {
  final String error;

  NewsFetchError({
    required this.error,
  });
}
