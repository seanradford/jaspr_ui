// TODO : artboard component

import 'package:jaspr/jaspr.dart';

class Artboard extends StatelessComponent {
  final List<Component> children;
  final bool horizontal;
  final bool demo;
  final ArtboardSize size;

  Artboard({
    super.key,
    required this.children,
    this.horizontal = false,
    this.demo = true,
    this.size = ArtboardSize.phone1,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'artboard '
          '${size.className} '
          '${demo == true ? 'artboard-demo' : ''} '
          '${horizontal == true ? 'artboard-horizontal' : ''} ',
      children,
    );
  }
}

enum ArtboardSize {
  phone1('phone-1'),
  phone2('phone-2'),
  phone3('phone-3'),
  phone4('phone-4'),
  phone5('phone-5'),
  phone6('phone-6');

  const ArtboardSize(this._className);

  final String _className;

  String get className => _className;
}
