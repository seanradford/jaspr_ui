// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_string_interpolations

import 'package:jaspr/jaspr.dart';

/// A stateless component representing a progress bar with customizable properties.
///
/// The [Progress] component allows configuring color, size, maximum value,
/// and current progress value. It can be styled using predefined color schemes.
///
/// Example:
/// ```dart
/// Progress(
///   color: ProgressColor.primary,
///   size: 'w-full',
///   max: 100,
///   value: 75.5,
/// )
/// ```
class Progress extends StatelessComponent {
  /// Optional color scheme for the progress bar.
  final ProgressColor? color;

  /// Size of the progress bar, defaults to 'w-45'.
  final String size;

  /// Maximum value of the progress bar, defaults to 100.
  final double? max;

  /// Current value of the progress bar, required parameter.
  final double? value;

  /// Constructs a [Progress] component with optional customization.
  Progress({
    this.color,
    this.size = 'w-45',
    this.max = 100,
    required this.value,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield progress(
      classes: 'progress ${size} '
          '${color != null ? '${color!.className}' : ''} ',
      value: value,
      max: max,
      [],
    );
  }
}

/// Enum representing predefined color schemes for the progress bar.
///
/// Each [ProgressColor] corresponds to a specific CSS class for styling.
enum ProgressColor {
  /// Primary color scheme
  primary('progress-primary'),

  /// Secondary color scheme
  secondary('progress-secondary'),

  /// Accent color scheme
  accent('progress-accent'),

  /// Informational color scheme
  info('progress-info'),

  /// Success color scheme
  success('progress-success'),

  /// Warning color scheme
  warning('progress-warning'),

  /// Error color scheme
  error('progress-error');

  /// Creates a [ProgressColor] with its associated CSS class name.
  const ProgressColor(this._className);

  /// The internal CSS class name for the color scheme.
  final String _className;

  /// Getter to access the CSS class name.
  String get className => _className;
}
