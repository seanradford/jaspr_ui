// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jaspr/jaspr.dart';

class DaisyUI extends StatelessComponent {
  final List<Component> children;
  final String theme;
  DaisyUI(
    this.children, {
    required this.theme,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Document.html(attributes: {"data-theme": theme});
    yield div(classes: 'main', children);
  }
}
