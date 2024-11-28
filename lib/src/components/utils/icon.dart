import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';
import '../../utils/jaspr_svg.dart';

class Icon extends StatelessComponent {
  final String icon;
  final double width;
  final double height;
  final TextColor? color;

  Icon({
    super.key,
    required this.icon,
    this.width = 24,
    this.height = 24,
    this.color,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield svgRaw(
      icon,
      width: Unit.pixels(width),
      height: Unit.pixels(height),
    );
  }
}
