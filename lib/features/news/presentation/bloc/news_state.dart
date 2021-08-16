part of 'news_bloc.dart';

@immutable
class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object?> get props => [];
}

class NewsInitial extends NewsState {}

class NewsLoading extends NewsState {}

class NewsGetSuccess extends NewsState {
  final List<News> listNews;

  const NewsGetSuccess({required this.listNews});
}

class NewsGetError extends NewsState {
  final String error;

  const NewsGetError({required this.error}) : super();
}
