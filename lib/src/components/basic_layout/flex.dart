import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

class Flexible extends StatelessComponent {
  final FlexibleDirection? direction;
  final GapSize? gap;
  final List<Component> children;

  Flexible(this.children, {super.key, this.direction, this.gap});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'flex ${direction?.className ?? ''} ${gap?.className ?? ''}',
        children);
  }
}

enum FlexibleDirection {
  column('flex-col'),
  columnReverse('flex-col-reverse'),
  rowReverse('flex-row-reverse'),
  row('flex-row');

  const FlexibleDirection(this._className);

  final String _className;

  String get className => _className;
}
