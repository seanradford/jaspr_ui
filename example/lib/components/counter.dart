import 'package:jaspr/jaspr.dart';

@client
class Counter extends StatefulComponent {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: '', [
      div(classes: 'text-3xl', [
        text('$counter'),
      ]),
      button(classes: 'btn', onClick: () {
        setState(() => counter++);
      }, [text('count')])
    ]);
  }
}
