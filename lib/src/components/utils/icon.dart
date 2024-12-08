import 'package:jaspr/jaspr.dart';
import 'package:jaspr_svg/jaspr_svg.dart';

class Icon extends StatelessComponent {
  final String? classes;
  final String icon;
  final double width;
  final double height;
  final Color? color;
  // final TextColor? color;

  Icon({
    super.key,
    required this.icon,
    this.width = 24,
    this.height = 24,
    this.color,
    this.classes,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield span(classes: 'w-[${width}px] h-[${height}px] ${classes ?? ''}', [
      svgRaw(
        icon,
        width: Unit.pixels(width),
        height: Unit.pixels(height),
        color: color,
      )
    ]);
  }
}
