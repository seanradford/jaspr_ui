// TODO : stack component

import 'package:jaspr/jaspr.dart';

class Stack extends StatelessComponent {
  final List<Component> children;

  Stack({super.key, required this.children});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'stack ', children);
  }
}
