import 'package:jaspr/jaspr.dart';

// FIXME : need better design

class GridView extends StatelessComponent {
  final List<Component> children;
  final GridType type;
  final int size;
  final int? sizeSM;
  final int? sizeMD;
  final int? sizeLG;
  final int gap;

  GridView({
    super.key,
    this.type = GridType.column,
    required this.size,
    this.sizeSM,
    this.sizeMD,
    this.sizeLG,
    this.gap = 4,
    required this.children,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'grid gap-$gap '
          '${type.className}-$size '
          '${sizeSM != null ? 'sm:${type.className}-$sizeSM' : ''} '
          '${sizeMD != null ? 'md:${type.className}-$sizeMD' : ''} '
          '${sizeLG != null ? 'lg:${type.className}-$sizeLG' : ''} ',
      children,
    );
  }
}

enum GridType {
  row('grid-rows'),
  column('grid-cols');

  const GridType(this._className);

  final String _className;

  String get className => _className;
}
