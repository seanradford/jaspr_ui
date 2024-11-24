import 'package:jaspr/jaspr.dart';

class Kbd extends StatelessComponent {
  final String title;
  final KbdSize? size;

  Kbd({super.key, required this.title, this.size});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'kbd',
      classes: 'kbd '
          '${size != null ? size!.className : ''} ',
      child: text(title),
    );
  }
}

enum KbdSize {
  lg('kbd-lg'),
  md('kbd-md'),
  sm('kbd-sm'),
  xs('kbd-xs');

  const KbdSize(this._className);

  final String _className;

  String get className => _className;
}
