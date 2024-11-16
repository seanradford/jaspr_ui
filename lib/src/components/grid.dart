// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jaspr/jaspr.dart';

class GridView extends StatelessComponent {
  const GridView(
    this.children, {
    this.cols = 1,
    this.mdCols,
    this.lgCols,
  });

  final int cols;
  final int? mdCols;
  final int? lgCols;
  final List<Component> children;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'grid '
          ' grid-cols-$cols'
          '${mdCols != null ? ' md:grid-cols-$mdCols' : ''}'
          '${lgCols != null ? ' lg:grid-cols-$lgCols' : ''}',
      children,
    );
  }
}
