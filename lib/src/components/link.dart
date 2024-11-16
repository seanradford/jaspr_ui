import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/src/colors/link_colors.dart';

class Link extends StatelessComponent {
  const Link({
    super.key,
    this.color,
    required this.url,
    required this.title,
      this.target = Target.self,
  });

  final LinkColor? color;
  final String title;
  final String url;
  final Target target;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield a(
      href: url,
      target: target,
      classes: 'link '
          '${color != null ? color!.className : ''} ',
      [
        text(title),
      ],
    );
  }
}
