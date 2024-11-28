import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';
import '../../utils/jaspr_svg.dart';

/// A flexible SVG icon component for rendering scalable vector graphics.
///
/// [Icon] allows easy rendering of SVG icons with customizable dimensions and optional coloring.
///
/// Example usage:
/// ```dart
/// Icon(
///   icon: Ic.menu, // Path or raw SVG content
///   width: 32,
///   height: 32,
///   color: TextColor.primary
/// )
/// ```
class Icon extends StatelessComponent {
  /// The SVG content or path to the SVG icon.
  ///
  /// This can be a raw SVG string
  final String icon;

  /// The width of the icon in pixels.
  ///
  /// Defaults to 24 pixels if not specified.
  final double width;

  /// The height of the icon in pixels.
  ///
  /// Defaults to 24 pixels if not specified.
  final double height;

  /// Optional color to apply to the icon.
  ///
  /// Uses [TextColor] from Jaspr UI for consistent theming.
  final TextColor? color;

  /// Creates an [Icon] with the specified properties.
  ///
  /// [icon] is the required SVG content or path.
  /// [width] sets the icon width (defaults to 24).
  /// [height] sets the icon height (defaults to 24).
  /// [color] is an optional color for the icon.
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
