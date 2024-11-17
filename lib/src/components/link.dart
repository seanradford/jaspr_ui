import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/src/colors/link_colors.dart';

/// A customizable link component that renders an HTML anchor tag with styling options.
///
/// The Link component provides a consistent way to create hyperlinks throughout the application
/// with configurable colors, targets, and styling. It uses the jaspr framework's component system
/// to create accessible and styled anchor elements.
///
/// Example usage:
/// ```dart
/// Link(
///   url: 'https://example.com',
///   title: 'Visit Example',
///   color: LinkColor.primary,
///   target: Target.blank,
/// )
/// ```
class Link extends StatelessComponent {
  /// Creates a Link component with the specified configuration.
  ///
  /// Parameters:
  /// - [key]: Optional widget key for identification
  /// - [color]: Optional [LinkColor] to style the link (defaults to theme default if null)
  /// - [url]: The URL that the link points to
  /// - [title]: The text content displayed for the link
  /// - [target]: Specifies where to open the link (defaults to [Target.self])
  const Link({
    super.key,
    this.color,
    required this.url,
    required this.title,
    this.target = Target.self,
  });

  /// The color styling to apply to the link
  /// If null, the link will use the default styling
  final LinkColor? color;

  /// The text content to display for the link
  final String title;

  /// The URL that the link will navigate to when clicked
  final String url;

  /// Determines how the link opens:
  /// - [Target.self]: Opens in the same window/tab (default)
  /// - [Target.blank]: Opens in a new window/tab
  /// - [Target.parent]: Opens in the parent frame
  /// - [Target.top]: Opens in the full body of the window
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