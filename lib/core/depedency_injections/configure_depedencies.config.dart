// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/news/data/repos/news_repo_impl.dart' as _i5;
import '../../features/news/domain/repos/news_repo.dart' as _i4;
import '../../features/news/domain/use_cases/get_news_list.dart' as _i6;
import '../../features/news/presentation/bloc/news_bloc.dart' as _i7;
import 'register_module.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.NewsRepo>(() => _i5.NewsRepoImple(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i6.GetNewsList>(
      () => _i6.GetNewsList(newsRepo: get<_i4.NewsRepo>()));
  gh.factory<_i7.NewsBloc>(() => _i7.NewsBloc(get<_i6.GetNewsList>()));
  return get;
}

class _$RegisterModule extends _i8.RegisterModule {}
