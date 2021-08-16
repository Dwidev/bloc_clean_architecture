import 'package:bloc_clean_architecture/features/news/presentation/pages/news_page.dart';

import '../../../../logic_export.dart';
import '../../../../ui_export.dart';
import '../cubit/conter_cubit.dart';
import '../widgets/floation_action.dart';

class ConterPage extends StatefulWidget {
  const ConterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ConterPageState createState() => _ConterPageState();
}

class _ConterPageState extends State<ConterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            BlocConsumer<ConterCubit, ConterState>(
              listener: (context, state) {
                if (state.conter < 0) {
                  context.read<ConterCubit>().resetValue();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("WOII GA BOLEHH MINESS INI"),
                    ),
                  );
                }
              },
              builder: (context, state) {
                return Text(
                  state.conter.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            const SizedBox(height: 100),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewsPage(),
                  ),
                );
              },
              child: const Text("Go to news page"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionWidget(
        increment: () => context.read<ConterCubit>().increment(),
        decrement: () => context.read<ConterCubit>().decrement(),
      ),
    );
  }
}
