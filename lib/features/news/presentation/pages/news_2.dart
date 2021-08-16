import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../ui_export.dart';
import '../bloc/news_bloc.dart';
import '../widgets/news_card_widget.dart';

class News2Page extends StatefulWidget {
  const News2Page({
    Key? key,
  }) : super(key: key);

  @override
  _News2PageState createState() => _News2PageState();
}

class _News2PageState extends State<News2Page> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<NewsBloc, NewsState>(
              builder: (context, state) {
                if (state is NewsGetSuccess) {
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
