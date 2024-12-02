import 'package:jaspr/jaspr.dart';

import '../utils/heading.dart';

/// A custom link component that provides flexible styling and configuration.
///
/// [TextLink] creates an anchor element with customizable type and appearance.
///
/// Example usage:
/// ```dart
/// TextLink(
///   title: 'Click me',
///   href: '/example',
///   type: LinkType.primary
/// )
/// ```
class TextLink extends StatelessComponent {
  /// The text displayed for the link.
  final String title;

  /// The destination URL or route for the link.
  final String href;

  /// Optional type to apply specific styling to the link.
  ///
  /// When provided, this will add a specific CSS class to the link.
  final LinkType? type;
  final bool isGhost;
  final bool isButton;
  final bool isCircle;
  final TextSize? size;

  /// Creates an [TextLink] with the specified properties.
  ///
  /// [title] is the text to display (required).
  /// [href] is the destination link (required).
  /// [type] is an optional link style type.
  /// [size] is an optional link size type.
  TextLink({
    required this.title,
    required this.href,
    this.size,
    this.type,
    this.isGhost = false,
    this.isButton = false,
    this.isCircle = false,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield a(
      classes: '${isButton == true ? 'btn ' : 'link '}'
          '${isGhost == true ? 'btn-ghost ' : ''}'
          '${isCircle == true ? 'btn-circle ' : ''}'
          '${size != null ? '${size!.className} ' : ''}'
          '${type?.className ?? ' '}',
      href: href,
      [text(title)],
    );
  }
}

class TitleLink extends StatelessComponent {
  /// The text displayed for the link.
  final String title;

  /// The destination URL or route for the link.
  final String href;

  /// Optional type to apply specific styling to the link.
  ///
  /// When provided, this will add a specific CSS class to the link.
  final LinkType? type;
  final bool isButton;
  final bool isCircle;

  /// Creates an [TitleLink] with the specified properties.
  ///
  /// [title] is the text to display (required).
  /// [href] is the destination link (required).
  /// [type] is an optional link style type.
  TitleLink({
    required this.title,
    required this.href,
    this.type,
    this.isButton = false,
    this.isCircle = false,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield a(
      classes: '${isButton == true ? 'btn btn-ghost' : 'link'} text-xl '
          '${isCircle == true ? 'btn-circle' : 'btn-square'} '
          '${type?.className ?? ''}',
      href: href,
      [text(title)],
    );
  }
}

/// Defines different styling types for links.
///
/// [LinkType] provides predefined CSS classes for various link appearances,
/// allowing easy visual differentiation and theming of links across an application.
enum LinkType {
  /// Primary link style (typically the main or default link appearance)
  primary('link-primary'),

  /// Secondary link style for less prominent links
  secondary('link-secondary'),

  /// Accent link style to draw special attention
  accent('link-accent'),

  /// Success-themed link (often used for positive or successful actions)
  success('link-success'),

  /// Informational link style
  info('link-info'),

  /// Warning-themed link style
  warning('link-warning'),

  /// Error or danger-themed link style
  error('link-error'),

  /// Link style applied on hover state
  hover('link-hover');

  /// Creates a [LinkType] with an associated CSS class name.
  const LinkType(this._className);

  /// The internal CSS class name associated with this link type.
  final String _className;

  /// Retrieves the CSS class name for the link type.
  ///
  /// Returns a string that can be used to apply specific styling.
  String get className => _className;
}
