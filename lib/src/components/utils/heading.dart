// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jaspr/jaspr.dart';

import '../../colors/text_colors.dart';

/// A reusable component for rendering customizable title headings.
///
/// [TextHeading] allows creating text elements with flexible styling options
/// including size, color, and bold formatting.
///
/// Example usage:
/// ```dart
/// TextHeading(
///   title: 'Welcome',
///   size: TextSize.size3,
///   color: TextColor.primary,
///   bold: true
/// )
/// ```
class TextHeading extends StatelessComponent {
  /// The text content of the heading.
  final String title;

  /// Optional text size from predefined [TextSize] enum.
  final TextSize? size;

  /// Optional text color from predefined [TextColor] enum.
  final TextColor? color;

  /// Optional flag to make the text bold.
  final bool? bold;

  /// Constructor for creating a [TextHeading] component.
  ///
  /// [title] is required and represents the text to be displayed.
  /// [size], [color], and [bold] are optional styling parameters.
  TextHeading({
    required this.title,
    this.size,
    this.color,
    this.bold,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: '${size != null ? '${size!.className} ' : ''}'
            '${bold != null ? 'font-bold ' : ''}'
            '${color != null ? '${color!.className} ' : ''}',
        [text(title)]);
  }
}

/// Defines predefined text size classes for consistent typography.
///
/// Provides a set of text size options that map to Tailwind CSS text size classes,
/// ranging from extra small (xs) to large (4xl).
enum TextSize {
  /// Extra small text size, corresponds to 'text-xs' Tailwind class
  size7('text-xs'),

  /// Small text size, corresponds to 'text-sm' Tailwind class
  size6('text-sm'),

  /// Large text size, corresponds to 'text-lg' Tailwind class
  size5('text-lg'),

  /// Extra large text size, corresponds to 'text-xl' Tailwind class
  size4('text-xl'),

  /// 2XL text size, corresponds to 'text-2xl' Tailwind class
  size3('text-2xl'),

  /// 3XL text size, corresponds to 'text-3xl' Tailwind class
  size2('text-3xl'),

  /// 4XL text size, corresponds to 'text-4xl' Tailwind class
  size1('text-4xl');

  /// Creates a const constructor for the [TextSize] enum
  const TextSize(this._className);

  /// The Tailwind CSS class name for the text size
  final String _className;

  /// Getter to access the Tailwind CSS class name
  String get className => _className;
}
