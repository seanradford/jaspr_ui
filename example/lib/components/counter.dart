import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

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
    yield Container(
      children: [
        TextHeading(
          title: '$counter',
          bold: true,
          size: TextSize.size1,
        ),
        button(
          classes: 'btn max-w-24',
          onClick: () {
            setState(() => counter++);
          },
          [text('Increase')],
        ),
      ],
    );
  }
}
