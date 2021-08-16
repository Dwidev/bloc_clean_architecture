import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'configure_depedencies.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDepencies() => $initGetIt(getIt);
