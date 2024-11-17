import 'package:jaspr/jaspr.dart';

/// A component that creates a horizontal divider with centered text.
///
/// The [Divider] component creates a visual separation between content sections
/// with an optional title text centered within the divider line. It uses Tailwind CSS
/// classes for styling and layout.
///
/// The divider spans the full width of its container and centers the title text
/// both horizontally and vertically.
///
/// Example usage:
/// ```dart
/// Divider(
///   title: 'Section Title',
/// )
/// ```
///
/// Visual representation:
/// ```
/// ─────────── Section Title ───────────
/// ```
class Divider extends StatelessComponent {
  /// The text to display in the center of the divider.
  ///
  /// This text will be centered both horizontally and vertically
  /// within the divider line.
  final String title;

  /// Creates a new [Divider] with the specified [title].
  ///
  /// The [title] parameter is required and will be displayed
  /// in the center of the divider line.
  const Divider({
    required this.title,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: "flex w-full flex-col", [
      div(
        classes: "divider",
        [
          text(title),
        ],
      )
    ]);
  }
}