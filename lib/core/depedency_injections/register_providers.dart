import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: implementation_imports
import 'package:flutter_bloc/src/bloc_provider.dart'
    show BlocProviderSingleChildWidget;

import '../../features/conter/presentation/cubit/conter_cubit.dart';
import '../../features/news/presentation/bloc/news_bloc.dart';
import 'configure_depedencies.dart';

final registerBlocProviders = <BlocProviderSingleChildWidget>[
  BlocProvider(
    create: (_) => ConterCubit(),
  ),
  BlocProvider(
    create: (_) => getIt<NewsBloc>(),
  ),
];
