import 'package:bloc_clean_architecture/features/conter/presentation/cubit/conter_cubit.dart';
import 'package:bloc_clean_architecture/features/news/presentation/pages/news_2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../ui_export.dart';
import '../bloc/news_bloc.dart';
import '../widgets/news_card_widget.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({
    Key? key,
  }) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
    super.initState();
    context.read<NewsBloc>().add(NewsFetch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
      ),
      body: Column(
        children: [
          Builder(
            builder: (context) {
              final cWatch = context.read<ConterCubit>();
              return Text(cWatch.state.conter.toString());
            },
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const News2Page(),
                ),
              );
            },
            child: const Text("Go to news page"),
          ),
          Expanded(
            child: BlocConsumer<NewsBloc, NewsState>(
              listener: (context, state) {
                if (state is NewsGetError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.error)),
                  );
                }
              },
              builder: (context, state) {
                if (state is NewsLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state is NewsGetSuccess) {
                  print("STATE Is NewsGetSuccess");
                  return ListView.builder(
                    itemCount: state.listNews.length,
                    itemBuilder: (context, index) {
                      final news = state.listNews[index];
                      return NewsCardWidget(
                        image: news.urlToImage,
                        title: news.title,
                        desc: news.description,
                        source: news.source,
                      );
                    },
                  );
                }

                return const Offstage();
              },
            ),
          ),
        ],
      ),
    );
  }
}
