import 'package:jaspr/jaspr.dart';

/// A responsive grid layout component that arranges children in a grid pattern with configurable columns
/// for different screen sizes.
///
/// The grid uses CSS Grid layout with Tailwind classes to create a responsive design that can adjust
/// the number of columns based on screen size breakpoints (mobile, tablet, desktop).
///
/// Example usage:
/// ```dart
/// GridView(
///   cols: 2,
///   mdCols: 3,
///   lgCols: 4,
///   [
///     Component1(),
///     Component2(),
///     Component3(),
///   ],
/// )
/// ```
class GridView extends StatelessComponent {
  /// Creates a GridView with the specified configuration.
  ///
  /// Parameters:
  /// - [children]: The list of components to display in the grid
  /// - [cols]: Number of columns for mobile screens (default: 1)
  /// - [mdCols]: Optional number of columns for medium-sized screens (tablet)
  /// - [lgCols]: Optional number of columns for large screens (desktop)
  const GridView(
    this.children, {
    this.cols = 1,
    this.mdCols,
    this.lgCols,
  });

  /// The number of columns to display on mobile screens
  final int cols;

  /// The number of columns to display on medium-sized screens (tablet)
  /// If null, will maintain the [cols] value
  final int? mdCols;

  /// The number of columns to display on large screens (desktop)
  /// If null, will maintain the previous breakpoint's value
  final int? lgCols;

  /// The child components to display in the grid
  final List<Component> children;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'grid '
          ' grid-cols-$cols'
          '${mdCols != null ? ' md:grid-cols-$mdCols' : ''}'
          '${lgCols != null ? ' lg:grid-cols-$lgCols' : ''}',
      children,
    );
  }
}
