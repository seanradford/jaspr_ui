// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jaspr/jaspr.dart';

class Visible extends StatelessComponent {
  final bool sm;
  final bool md;
  final bool lg;
  final Component child;
  Visible({
    this.sm = false,
    this.md = false,
    this.lg = true,
    required this.child,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'invisible '
            '${(sm) ? 'sm:visible ' : ''}'
            '${(md) ? 'md:visible ' : ''}'
            '${(lg) ? 'lg:visible ' : ''}',
        [child]);
  }
}
