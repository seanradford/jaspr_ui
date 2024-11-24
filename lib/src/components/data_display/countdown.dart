import 'package:jaspr/jaspr.dart';

// TODO : add more styles

class Countdown extends StatelessComponent {
  final int counter;

  Countdown({super.key, required this.counter});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    //
    yield span(classes: 'countdown', [
      span(classes: '--value:${counter};', []),
    ]);
  }
}
