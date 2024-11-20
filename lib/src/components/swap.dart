import 'package:jaspr/jaspr.dart';

/// A component that creates a flip animation effect between two different views.
///
/// The [SwapFlip] component provides an interactive animation that transitions between
/// two different components using a flip or rotate effect. It uses a checkbox-based
/// mechanism to trigger the animation, making it both performant and accessible.
///
/// The component consists of:
/// * A front view - initially visible component
/// * A back view - component shown after the flip animation
/// * Optional animation effect - can be either flip or rotate
///
/// Features:
/// * Smooth CSS-based animations
/// * Accessible through checkbox interaction
/// * Multiple animation effect options
/// * Stateless implementation for better performance
///
/// Example usage:
/// ```dart
/// SwapFlip(
///   front: div([text('Front content')]),
///   back: div([text('Back content')]),
///   effect: SwapEffect.flip,
/// )
/// ```
///
/// The animation can be triggered by clicking anywhere on the component, which
/// toggles the underlying checkbox state and initiates the transition effect.
class SwapFlip extends StatelessComponent {
  /// Creates a new [SwapFlip] component.
  ///
  /// Requires [front] and [back] components to be provided. The [effect] parameter
  /// is optional and defaults to a simple swap if not specified.
  ///
  /// Parameters:
  /// * [front] - The component to display on the front side
  /// * [back] - The component to display on the back side
  /// * [effect] - Optional animation effect to use during transition
  const SwapFlip({
    required this.front,
    required this.back,
    this.effect,
  });

  /// The component to display on the front side.
  ///
  /// This is the initially visible component before any interaction.
  /// It should be designed to fit within the same space constraints
  /// as the [back] component to ensure smooth transitions.
  final Component front;

  /// The component to display on the back side.
  ///
  /// This component becomes visible when the flip animation is triggered.
  /// It should maintain similar dimensions to the [front] component
  /// to prevent layout shifts during animation.
  final Component back;

  /// The animation effect to apply during the transition.
  ///
  /// When null, a simple swap is performed without any animation.
  /// See [SwapEffect] for available animation options.
  final SwapEffect? effect;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield label(
        classes: 'swap '
            '${effect != null ? '${effect!.className} ' : ''}',
        [
          // Checkbox input that controls the flip state
          input(
            [],
            type: InputType.checkbox,
          ),
          // The component shown when the checkbox is checked (flipped state)
          div(
            classes: 'swap-on',
            [front],
          ),
          // The component shown when the checkbox is unchecked (initial state)
          div(
            classes: 'swap-off',
            [back],
          ),
        ]);
  }
}

/// Defines the available animation effects for the [SwapFlip] component.
///
/// Available effects:
/// * [flip] - A 3D flip animation
/// * [rotate] - A 2D rotation animation
enum SwapEffect {
  /// Performs a 3D flip animation around the Y-axis
  flip('swap-flip'),

  /// Performs a 2D rotation animation
  rotate('swap-rotate');

  /// Creates a new [SwapEffect] with the specified CSS class name.
  const SwapEffect(this._className);

  /// The CSS class name used internally to apply the animation effect.
  final String _className;

  /// Returns the CSS class name associated with this animation effect.
  ///
  /// This class name is used internally by the [SwapFlip] component to
  /// apply the appropriate CSS animations.
  String get className => _className;
}
