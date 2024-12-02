// TODO : column
import 'package:jaspr/jaspr.dart';

import '../../sizes/gap_size.dart';

class Column extends StatelessComponent {
  final ColumnSize size;
  final GapSize? gap;

  final List<Component> children;

  Column(
    this.children, {
    super.key,
    required this.size,
    this.gap,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: '${size.className} ${gap?.className ?? ''}',
      children,
    );
  }
}

enum ColumnSize {
  c1('columns-1'),
  c2('columns-2'),
  c3('columns-3'),
  c4('columns-4'),
  c5('columns-5'),
  c6('columns-6'),
  c7('columns-7'),
  c8('columns-8'),
  c9('columns-9'),
  c10('columns-10'),
  c11('columns-11'),
  c12('columns-12'),
  cauto('columns-auto'),
  c3xs('columns-3xs'),
  c2xs('columns-2xs'),
  xs('columns-xs'),
  sm('columns-sm'),
  md('columns-md'),
  lg('columns-lg'),
  xl('columns-xl'),
  c2xl('columns-2xl'),
  c3xl('columns-3xl'),
  c4xl('columns-4xl'),
  c5xl('columns-5xl'),
  c6xl('columns-6xl'),
  c7xl('columns-7xl');

  const ColumnSize(this._className);

  final String _className;

  String get className => _className;
}
