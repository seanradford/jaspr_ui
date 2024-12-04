import 'package:jaspr/jaspr.dart';

import '../../colors/badge_colors.dart';

/// A reusable indicator component that can be positioned around a child component
/// with optional coloring and a title.
///
/// The Indicator allows adding a badge-like element to another component,
/// with customizable color, position, and text.
///
/// Example usage:
/// ```dart
/// Indicator(
///   color: BadgeColor.primary,
///   position: IndicatorPosition.topRight,
///   title: 'New',
///   child: someComponent
/// )
/// ```
class Indicator extends StatelessComponent {
  /// The color of the indicator badge.
  ///
  /// Can be null, in which case no specific color will be applied.
  final BadgeColor? color;

  /// The child component that the indicator will be attached to.
  ///
  /// This is a required parameter and represents the main content
  /// around which the indicator will be displayed.
  final Component child;

  /// The text to be displayed in the indicator badge.
  ///
  /// Can be null, in which case no text will be shown.
  final String? title;

  /// The position of the indicator badge relative to the child component.
  ///
  /// Can be null, in which case no specific positioning will be applied.
  final IndicatorPosition? position;

  /// Constructor for creating an Indicator component.
  ///
  /// [key] is an optional parameter for widget identification.
  /// [color] sets the badge's color.
  /// [child] is the component the indicator will be attached to.
  /// [title] is the text displayed in the badge.
  /// [position] determines the badge's location around the child.
  Indicator(
      {super.key,
      required this.color,
      required this.child,
      required this.title,
      required this.position});

  /// Builds the indicator component by creating a div with the indicator
  /// and child components.
  ///
  /// Applies CSS classes based on the provided color and position.
  /// Yields a div containing a span for the indicator and the child component.
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'indicator', [
      span(
          classes:
              'indicator-item ${position?.className ?? ''} badge ${color?.className ?? ''}',
          [text(title ?? '')]),
      child,
    ]);
  }
}

/// An enum that defines the different positions for an indicator on the screen.
///
/// Each position corresponds to a specific CSS class that can be used to style
/// the indicator accordingly.
enum IndicatorPosition {
  /// Positions the indicator at the start of the screen (platform-specific).
  left('indicator-start'),

  /// Positions the indicator at the center of the screen (platform-specific).
  center('indicator-center'),

  /// Positions the indicator at the end of the screen (platform-specific).
  right('indicator-end'),

  /// Positions the indicator at the top of the screen.
  top('indicator-top'),

  /// Positions the indicator at the top left corner of the screen.
  topLeft('indicator-top indicator-start'),

  /// Positions the indicator at the top right corner of the screen.
  topRight('indicator-top indicator-end'),

  /// Positions the indicator at the middle of the screen (vertically).
  middle('indicator-middle'),

  /// Positions the indicator at the middle left corner of the screen.
  middleLeft('indicator-start indicator-middle'),

  /// Positions the indicator at the middle right corner of the screen.
  middleRight('indicator-end indicator-middle'),

  /// Positions the indicator at the bottom of the screen.
  bottom('indicator-bottom'),

  /// Positions the indicator at the bottom left corner of the screen.
  bottomLeft('indicator-bottom indicator-start'),

  /// Positions the indicator at the bottom right corner of the screen.
  bottomRight('indicator-bottom indicator-end');

  const IndicatorPosition(this._className);

  final String _className;

  /// Gets the CSS class name for this indicator position.
  String get className => _className;
}
