import 'package:jaspr/jaspr.dart';

/// A component that provides a responsive artboard container for displaying content
/// in different device viewport sizes.
///
/// The Artboard component is useful for previewing how content will appear on different
/// device sizes and orientations. It's particularly helpful for responsive design testing
/// and component showcasing.
///
/// Example usage:
/// ```dart
/// Artboard(
///   size: ArtboardSize.phone1,
///   horizontal: true,
///   demo: true,
///   children: [
///     text('Content goes here'),
///     // Add more components...
///   ],
/// )
/// ```

/// A container component that simulates different device viewports.
///
/// This component wraps content in a container that mimics various device sizes
/// and can be oriented either vertically or horizontally. It's particularly useful
/// for previewing responsive layouts and testing component behavior across
/// different viewport sizes.
class Artboard extends StatelessComponent {
  /// The child components to be rendered within the artboard
  final List<Component> children;

  /// Whether the artboard should be displayed in horizontal orientation
  ///
  /// If true, the artboard will be rendered in landscape mode
  /// If false (default), it will be rendered in portrait mode
  final bool horizontal;

  /// Whether to show the artboard with demo styling
  ///
  /// When true, adds visual indicators and styling to help identify
  /// the artboard boundaries and size
  final bool demo;

  /// The size preset for the artboard
  ///
  /// Determines the dimensions of the artboard based on predefined
  /// device sizes from [ArtboardSize]
  final ArtboardSize size;

  Artboard({
    super.key,
    required this.children,
    this.horizontal = false,
    this.demo = true,
    this.size = ArtboardSize.phone1,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'artboard '
          '${size.className} '
          '${demo == true ? 'artboard-demo' : ''} '
          '${horizontal == true ? 'artboard-horizontal' : ''} ',
      children,
    );
  }
}

/// Defines the available preset sizes for the Artboard component.
///
/// Each enum value corresponds to a specific device viewport size:
/// - phone1: Smallest phone size
/// - phone2: Small phone size
/// - phone3: Medium phone size
/// - phone4: Large phone size
/// - phone5: Larger phone size
/// - phone6: Largest phone size
///
/// These sizes can be used to simulate different device viewports for
/// testing responsive designs.
enum ArtboardSize {
  /// Smallest phone size preset
  phone1('phone-1'),

  /// Small phone size preset
  phone2('phone-2'),

  /// Medium phone size preset
  phone3('phone-3'),

  /// Large phone size preset
  phone4('phone-4'),

  /// Larger phone size preset
  phone5('phone-5'),

  /// Largest phone size preset
  phone6('phone-6');

  const ArtboardSize(this._className);

  /// Internal storage for the CSS class name
  final String _className;

  /// Returns the CSS class name associated with this size preset
  String get className => _className;
}
