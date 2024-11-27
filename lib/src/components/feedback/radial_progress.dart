// ignore_for_file: unnecessary_brace_in_string_interps
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

/// A stateless component for rendering a radial progress indicator.
///
/// Allows customization of progress value, colors, size, and thickness.
///
/// Example:
/// ```dart
/// RadialProgress(
///   value: 75,
///   color: TextColor.primary,
///   size: '4rem',
///   thickness: '4px'
/// )
/// ```
class RadialProgress extends StatelessComponent {
  /// The current progress value (0-100).
  final int value;

  /// Optional text color for the progress indicator.
  final TextColor? color;

  /// Optional background color for the progress indicator.
  final BackgroundColor? backgroudColor;

  /// Optional border color for the progress indicator.
  final BorderColor? borderColor;

  /// Optional size of the progress indicator.
  final String? size;

  /// Optional thickness of the progress indicator.
  final String? thickness;

  /// Constructs a [RadialProgress] with required and optional parameters.
  RadialProgress({
    super.key,
    required this.value,
    this.color,
    this.backgroudColor,
    this.borderColor,
    this.size,
    this.thickness,
  });

  @override
  Iterable<Component> build(Object context) sync* {
    final kthick = (thickness != null) ? '--thickness: $thickness;' : '';
    final ksize = (size != null) ? '--size: $size;' : '';
    final kcolor = (color != null) ? color!.className : '';
    final kbcolor = (borderColor != null) ? borderColor!.className : '';
    final kvale = '--value:$value;';

    yield div(
      classes: 'radial-progress $kbcolor $kcolor',
      attributes: {
        'style': '$kvale $kthick $ksize',
        'role': 'progressbar',
      },
      [text('${value}%')],
    );
  }
}
