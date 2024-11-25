import 'package:jaspr/jaspr.dart';

/// A component that displays two items side-by-side for comparison with an interactive resizer.
///
/// The component creates a visual diff/comparison view where users can drag a center divider
/// to reveal more or less of each item. This is useful for before/after comparisons,
/// image diffs, or any other side-by-side comparison scenarios.
///
/// Features:
/// - Maintains a 16:9 aspect ratio for consistent layout
/// - Interactive draggable divider for adjusting the view
/// - Smooth transitions between views
///
/// Example usage:
/// ```dart
/// Diff(
///   item1: img(src: 'before.jpg', classes: 'w-full h-full object-cover'),
///   item2: img(src: 'after.jpg', classes: 'w-full h-full object-cover'),
/// )
/// ```
///
/// Note: This component relies on CSS classes from a UI framework (like DaisyUI)
/// for the diff functionality and styling.
class Diff extends StatelessComponent {
  /// The first item to display (typically the "before" or left side component)
  final Component item1;

  /// The second item to display (typically the "after" or right side component)
  final Component item2;

  const Diff({super.key, required this.item1, required this.item2});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    // Create a container with a 16:9 aspect ratio to hold the diff items.
    yield div(classes: 'diff aspect-[16/9]', [
      // Display the first item in a container with the `diff-item-1` class.
      div(classes: 'diff-item-1', [item1]),
      // Display the second item in a container with the `diff-item-2` class.
      div(classes: 'diff-item-2', [item2]),
      // Display a resizable divider in a container with the `diff-resizer` class.
      div(classes: 'diff-resizer', []),
    ]);
  }
}
