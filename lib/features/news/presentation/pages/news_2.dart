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
    // context.read<NewsBloc>().add(NewsFetch());
  }

  final image =
      "https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/31d3c18397ec37fb4a283135c34cb1e6.jpg";

  final title = "How to Fake Like You Know What's Going on In the Olympics";
  final desc =
      "Did you know the summer Olympics include competitions in canoeing, BMX racing, handball, trampoline, and judo? Maybe you didn’t, but fans of those sports definitely do, and you might encounter those big brains and need to play along.Read more...";

  final source = "Lifehacker.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
      ),
      body: Column(
        children: [
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
