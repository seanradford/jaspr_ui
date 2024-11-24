import 'package:jaspr/jaspr.dart';

/// A component that displays a countdown value using CSS counters.
///
/// This component creates a span element with a nested structure to display
/// the countdown value using CSS styling. The counter value is passed through
/// CSS custom properties.
///
/// Example usage:
/// ```dart
/// Countdown(counter: 42)
/// ```
///
/// The component expects CSS styles to be defined that handle the `countdown`
/// class and the `--value` custom property for proper rendering.
class Countdown extends StatelessComponent {
  /// The numeric value to display in the countdown.
  ///
  /// This value will be passed to CSS as a custom property and can be used
  /// to style the countdown display.
  final int counter;

  /// Creates a new [Countdown] component.
  ///
  /// The [counter] parameter is required and specifies the value to display.
  /// The optional [key] parameter can be used for widget identification.
  Countdown({super.key, required this.counter});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield span(classes: 'countdown font-mono', [
      span(styles: Styles.raw({'--value': '$counter'}), []),
    ]);
  }
}
