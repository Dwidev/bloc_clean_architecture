import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/conter/presentation/pages/conter_page.dart';
import 'logic_export.dart';
import 'ui_export.dart';

class FlutterApp extends StatelessWidget {
  const FlutterApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Clean Architecture',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ConterPage(title: 'Flutter Demo Home Page'),
      builder: (context, child) {
        return MultiBlocProvider(
          providers: registerBlocProviders,
          child: child ?? const Offstage(),
        );
      },
    );
  }
}
