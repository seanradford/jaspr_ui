// ignore_for_file: unnecessary_string_interpolations

import 'package:jaspr/jaspr.dart';

/// A stateless component for rendering loading indicators with customizable type, size, and color.
///
/// [Loading] allows configuration of different loading styles through [LoadingType],
/// [LoadingSize], and [LoadingColor] enums. It renders a loading indicator as a span
/// with dynamically applied CSS classes.
///
/// Example usage:
/// ```dart
/// Loading(type: LoadingType.spinner, size: LoadingSize.md, color: LoadingColor.primary)
/// ```
class Loading extends StatelessComponent {
  /// The type of loading animation to display.
  final LoadingType type;

  /// Optional size of the loading indicator.
  final LoadingSize? size;

  /// Optional color of the loading indicator.
  final LoadingColor? color;

  /// Constructs a [Loading] component with optional parameters.
  ///
  /// [type] defaults to [LoadingType.dots] if not specified.
  Loading({super.key, this.type = LoadingType.dots, this.size, this.color});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield span(
        classes: 'loading '
            '${type.className} '
            '${size != null ? '${size!.className}' : ''} '
            '${color != null ? '${color!.className}' : ''} ',
        []);
  }
}

/// Defines predefined sizes for loading indicators.
enum LoadingSize {
  /// Extra small loading indicator
  xs('loading-xs'),

  /// Small loading indicator
  sm('loading-sm'),

  /// Medium loading indicator
  md('loading-md'),

  /// Large loading indicator
  lg('loading-lg');

  /// Creates a [LoadingSize] with its corresponding CSS class name.
  const LoadingSize(this._className);

  final String _className;

  /// Returns the CSS class name for the loading size.
  String get className => _className;
}

/// Defines different types of loading animations.
enum LoadingType {
  /// Spinner loading animation
  spinner('loading-spinner'),

  /// Dots loading animation
  dots('loading-dots'),

  /// Ring loading animation
  ring('loading-ring'),

  /// Ball loading animation
  ball('loading-ball'),

  /// Bars loading animation
  bars('loading-bars'),

  /// Infinity loading animation
  infinity('loading-infinity');

  /// Creates a [LoadingType] with its corresponding CSS class name.
  const LoadingType(this._className);

  final String _className;

  /// Returns the CSS class name for the loading type.
  String get className => _className;
}

/// Defines color variations for loading indicators.
enum LoadingColor {
  /// Primary color
  primary('text-primary'),

  /// Secondary color
  secondary('text-secondary'),

  /// Accent color
  accent('text-accent'),

  /// Info color
  info('text-info'),

  /// Success color
  success('text-success'),

  /// Warning color
  warning('text-warning'),

  /// Error color
  error('text-error');

  /// Creates a [LoadingColor] with its corresponding CSS class name.
  const LoadingColor(this._className);

  final String _className;

  /// Returns the CSS class name for the loading color.
  String get className => _className;
}
