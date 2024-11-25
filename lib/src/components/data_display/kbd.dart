import 'package:jaspr/jaspr.dart';

/// A keyboard key component that displays the specified `title` in a keyboard key style.
///
/// This component renders a visual representation of a keyboard key using the HTML `<kbd>`
/// element with styling. It's useful for displaying keyboard shortcuts, key combinations,
/// or individual keys in documentation or user interfaces.
///
/// The optional `size` property allows customizing the key size using predefined sizes
/// from the [KbdSize] enum.
///
/// Example usage:
/// ```dart
/// // Default size key
/// Kbd(title: 'Ctrl')
///
/// // Large size key
/// Kbd(title: 'Enter', size: KbdSize.lg)
///
/// // Multiple keys for a keyboard shortcut
/// row([
///   Kbd(title: 'Ctrl'),
///   text('+'),
///   Kbd(title: 'C'),
/// ])
/// ```
///
/// Note: This component relies on CSS classes (like those from DaisyUI) for styling
/// the keyboard key appearance.
class Kbd extends StatelessComponent {
  /// The text to display inside the keyboard key
  final String title;

  /// Optional size variant for the key
  /// If not specified, the default size from the CSS framework will be used
  final KbdSize? size;

  const Kbd({super.key, required this.title, this.size});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    // Create a DOM `kbd` element with the specified size class and the `title` text.
    yield DomComponent(
      tag: 'kbd',
      classes: 'kbd ${size?.className ?? ''}',
      child: text(title),
    );
  }
}

/// An enum representing different sizes for the [Kbd] component.
///
/// This enum provides a type-safe way to specify the size of keyboard keys.
/// Each value corresponds to a specific CSS class that controls the key's dimensions.
///
/// Available sizes from largest to smallest:
/// - [lg]: Large keyboard key
/// - [md]: Medium keyboard key
/// - [sm]: Small keyboard key
/// - [xs]: Extra small keyboard key
///
/// Example:
/// ```dart
/// // Large keyboard key
/// Kbd(title: 'Shift', size: KbdSize.lg)
///
/// // Extra small keyboard key
/// Kbd(title: 'A', size: KbdSize.xs)
/// ```
enum KbdSize {
  /// Large size keyboard key
  lg('kbd-lg'),

  /// Medium size keyboard key
  md('kbd-md'),

  /// Small size keyboard key
  sm('kbd-sm'),

  /// Extra small size keyboard key
  xs('kbd-xs');

  const KbdSize(this._className);

  final String _className;

  /// The CSS class name corresponding to the size.
  String get className => _className;
}
