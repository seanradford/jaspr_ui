// ignore_for_file: unnecessary_string_interpolations

import 'package:jaspr/jaspr.dart';

/// A customizable divider component that can be used to visually separate content
/// either horizontally or vertically with an optional title text.
///
/// The divider can be customized with:
/// * A title text that appears in the middle of the divider
/// * Position alignment (start or end)
/// * Color variations using the DividerColor enum
/// * Orientation (horizontal or vertical)
///
/// Example usage:
/// ```dart
/// Divider(
///   title: 'Section',
///   position: DividerPosition.start,
///   color: DividerColor.primary,
///   horizontal: true,
/// )
/// ```
class Divider extends StatelessComponent {
  /// The text to display in the divider
  final String title;

  /// Controls the alignment of the divider's content
  /// Can be [DividerPosition.start] or [DividerPosition.end]
  final DividerPosition? position;

  /// The color theme of the divider
  /// See [DividerColor] for available options
  final DividerColor? color;

  /// Whether the divider should be horizontal
  /// * true - renders a horizontal divider
  /// * false - renders a vertical divider
  final bool horizontal;

  /// Creates a new [Divider] instance
  ///
  /// [title] is required and specifies the text to display in the divider
  /// [position] optionally controls the content alignment
  /// [color] optionally sets the divider's color theme
  /// [horizontal] defaults to false (vertical divider)
  const Divider({
    required this.title,
    this.position,
    this.color,
    this.horizontal = false,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'flex '
            '${horizontal == true ? 'w-full flex-col ' : 'h-full '}',
        [
          div(
            classes: 'divider '
                '${horizontal != true ? 'divider-horizontal' : ''} '
                '${color != null ? '${color!.className}' : ''} '
                '${position != null ? '${position!.className}' : ''} ',
            [
              text(title),
            ],
          )
        ]);
  }
}

/// Defines the possible positions for the divider's content
enum DividerPosition {
  /// Aligns the content to the start of the divider
  start('divider-start'),

  /// Aligns the content to the end of the divider
  end('divider-end');

  const DividerPosition(this._className);
  final String _className;
  String get className => _className;
}

/// Defines the available color themes for the divider
enum DividerColor {
  /// Primary theme color
  primary('divider-primary'),

  /// Secondary theme color
  secondary('divider-secondary'),

  /// Accent theme color
  accent('divider-accent'),

  /// Neutral theme color
  neutral('divider-neutral'),

  /// Info theme color, typically blue
  info('divider-info'),

  /// Success theme color, typically green
  success('divider-success'),

  /// Warning theme color, typically yellow/orange
  warning('divider-warning'),

  /// Error theme color, typically red
  error('divider-error');

  const DividerColor(this._className);

  final String _className;

  String get className => _className;
}
