import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/news.dart';
import '../../domain/use_cases/get_news_list.dart';

part 'news_event.dart';
part 'news_state.dart';

@injectable
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetNewsList getNewsList;

  NewsBloc(this.getNewsList) : super(NewsInitial());

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    yield NewsLoading();

    if (event is NewsFetch) {
      final response = await getNewsList();

      response.when(
        success: (data) {
          add(NewsFetchSucces(news: data));
        },
        error: (error) {
          add(NewsFetchError(error: error.message));
        },
      );
    }

    if (event is NewsFetchSucces) {
      yield NewsGetSuccess(listNews: event.news);
    }

    if (event is NewsFetchError) {
      yield NewsGetError(error: event.error);
    }
  }
}
