import '../../../../ui_export.dart';

class FloatingActionWidget extends StatelessWidget {
  const FloatingActionWidget({
    Key? key,
    required this.increment,
    required this.decrement,
  }) : super(key: key);

  final Function() decrement;
  final Function() increment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: "decrement",
          onPressed: decrement,
          tooltip: 'decrement',
          child: const Icon(Icons.remove),
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          heroTag: "decremect",
          onPressed: increment,
          tooltip: 'decremect',
          child: const Icon(Icons.add),
        )
      ],
    );
  }
}
