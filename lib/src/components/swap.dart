import 'package:jaspr/jaspr.dart';

/// A component that creates a flip animation effect between two different views.
///
/// [SwapFlip] provides a checkbox-based flip animation that toggles between
/// two components: a front view and a back view. When the checkbox is clicked,
/// the component performs a flip animation to show the other side.
///
/// Example usage:
/// ```dart
/// SwapFlip(
///   front: div([text('Front content')]),
///   back: div([text('Back content')]),
/// )
/// ```
class SwapFlip extends StatelessComponent {
  /// Creates a new [SwapFlip] component.
  ///
  /// Both [front] and [back] parameters are required and represent
  /// the two sides of the flippable component.
  const SwapFlip({
    required this.front,
    required this.back,
  });

  /// The component to display on the front side of the flip animation.
  ///
  /// This is the initially visible component before any interaction.
  final Component front;

  /// The component to display on the back side of the flip animation.
  ///
  /// This component becomes visible when the flip animation is triggered.
  final Component back;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield label(classes: "swap swap-flip", [
      // Checkbox input that controls the flip state
      input(
        [],
        type: InputType.checkbox,
      ),
      // The component shown when the checkbox is checked (flipped state)
      div(
        classes: "swap-on",
        [front],
      ),
      // The component shown when the checkbox is unchecked (initial state)
      div(
        classes: "swap-off",
        [back],
      ),
    ]);
  }
}
