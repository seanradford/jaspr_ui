// ignore_for_file: public_member_api_docs, sort_constructors_first
// TODO : pagination component
import 'package:jaspr/jaspr.dart';
import '../../sizes/sizes.dart';

class Pagination extends StatelessComponent {
  final int start;
  final int currentIndex;
  final List<PaginationItem> children;
  final ButtonSize? size;

  Pagination({
    this.start = 1,
    required this.currentIndex,
    required this.children,
    this.size,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'join',
        List.generate(children.length, (index) {
          final item = children[index];
          final href = item.href;
          final active = (currentIndex == index) ? 'active' : '';
          return div(
            classes: 'join-item btn ${size?.className ?? ''} $active',
            [
              a([text('${start + index}')], href: href)
            ],
          );
        }));
  }
}

class PaginationItem {
  String href;
  PaginationItem({required this.href});
}
