import 'package:jaspr/jaspr.dart';

class Diff extends StatelessComponent {
  final Component item1;
  final Component item2;

  Diff({super.key, required this.item1, required this.item2});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    //
    yield div(classes: 'diff aspect-[16/9]', [
      div(classes: 'diff-item-1', [item1]),
      div(classes: 'diff-item-2', [item2]),
      div(classes: 'diff-resizer', []),
    ]);
  }
}
