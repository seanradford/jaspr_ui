import 'package:jaspr/jaspr.dart';

/// A component that renders a window mockup interface.
///
/// This component creates a container that simulates a desktop application window
/// or browser window, featuring a title bar area and a content section below.
/// It's useful for showcasing UI designs in a desktop window context or
/// creating application-like interfaces.
///
/// The window includes:
/// * A title bar area (represented by the top portion)
/// * A content area with padding for the main content
///
/// Example usage:
/// ```dart
/// WindowMockup(
///   children: [
///     text('Window content goes here'),
///     div(classes: 'mt-4', [
///       text('More content below'),
///     ]),
///   ],
/// )
/// ```
class WindowMockup extends StatelessComponent {
  /// The child components to be displayed in the window's content area.
  ///
  /// These components will be rendered within the window's main content section,
  /// below the title bar. The content area includes padding by default for
  /// proper spacing.
  final List<Component> children;

  /// Creates a new window mockup component.
  ///
  /// [children] is required and specifies the content to be displayed
  /// within the window's main content area. This can include any valid
  /// components that represent your window content.
  WindowMockup({super.key, required this.children});

  /// Builds the window mockup UI structure.
  ///
  /// Returns an [Iterable] of components that make up the window mockup,
  /// including:
  /// * An outer container with window styling and border
  /// * A content container with top border and padding
  /// * The provided child components within the content area
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'mockup-window border-base-300 border',
      [div(classes: 'border-base-300 border-t p-4', children)],
    );
  }
}
