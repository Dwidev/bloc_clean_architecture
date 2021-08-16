import '../../../../ui_export.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.desc,
    required this.source,
  }) : super(key: key);

  final String image;
  final String title;
  final String desc;
  final String source;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              image,
              width: 100,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    desc,
                  ),
                  const SizedBox(height: 10),
                  Text(source),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
