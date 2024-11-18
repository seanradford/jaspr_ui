import 'package:jaspr/jaspr.dart';

import 'package:jaspr_ui/jaspr_ui.dart';

/// A component that renders a title with a gradient background color effect.
///
/// This component creates a heading (h1) element with a customizable gradient text effect.
/// The gradient flows from left to right (bg-gradient-to-r) and uses the specified colors
/// to create a visually appealing title display.
///
/// Example usage:
/// ```dart
/// TitleGradient(
///   fromColor: FromColor.green_300,
///   viaColor: ViaColor.blue_500,
///   toColor: ToColor.purple_600,
///   title: 'Welcome to My App',
/// )
/// ```
class TitleGradient extends StatelessComponent {
  /// Creates a [TitleGradient] component.
  ///
  /// Parameters:
  /// - [key]: Optional widget key for identification
  /// - [fromColor]: The starting color of the gradient (defaults to green_300)
  /// - [viaColor]: The middle color of the gradient (defaults to blue_500)
  /// - [toColor]: The ending color of the gradient (defaults to purple_600)
  /// - [title]: The text content to be displayed with the gradient effect
  const TitleGradient({
    super.key,
    this.fromColor = FromColor.green_300,
    this.viaColor = ViaColor.blue_500,
    this.toColor = ToColor.purple_600,
    required this.title,
  });

  // The starting color of the gradient
  final FromColor fromColor;

  /// The middle color of the gradient
  final ViaColor viaColor;

  /// The ending color of the gradient
  final ToColor toColor;

  /// The text content to be displayed
  final String title;

  /// Builds the component's visual representation.
  ///
  /// Returns an h1 element with:
  /// - Gradient background flowing from left to right
  /// - Text clipped to show the gradient
  /// - Responsive text size (3xl on mobile, 5xl on sm breakpoint)
  /// - Extra bold font weight
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield h1(
      classes:
          'bg-gradient-to-r ${fromColor.className} ${viaColor.className} ${toColor.className} bg-clip-text text-3xl font-extrabold text-transparent sm:text-5xl',
      [
        text(title),
      ],
    );
  }
}
