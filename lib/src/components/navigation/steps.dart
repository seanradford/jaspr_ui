import 'package:jaspr/jaspr.dart';

/// Represents a container for a series of sequential steps.
///
/// The [Steps] component renders a list of [StepItem] components
/// with a unified styling and layout. It allows for creating
/// step-by-step progress indicators or process visualizations.
///
/// Example usage:
/// ```dart
/// Steps(
///   children: [
///     StepItem(title: 'First Step', color: StepColor.primary),
///     StepItem(title: 'Second Step', color: StepColor.secondary),
///   ],
/// )
/// ```
class Steps extends StatelessComponent {
  /// A list of step items to be displayed in sequence.
  final List<StepItem> children;

  /// A steps position
  final StepPosition? position;

  /// Creates a new [Steps] component.
  ///
  /// [key] is an optional key for this component.
  /// [children] is a required list of [StepItem] to be rendered.
  /// [position] is a optional for step position.
  Steps({super.key, required this.children, this.position});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield ul(classes: 'steps ${position?.className ?? ''}', children);
  }
}

/// Represents an individual step within a [Steps] component.
///
/// [StepItem] defines a single step with a title and optional
/// color styling. It can be used to create detailed
/// step-by-step progress indicators.
///
/// Example usage:
/// ```dart
/// StepItem(
///   title: 'Complete Profile',
///   color: StepColor.success
/// )
/// ```
class StepItem extends StatelessComponent {
  /// The text displayed for this step.
  final String title;

  /// The content displayed for this step.
  final String? content;

  /// Optional color styling for the step.
  final StepColor? color;

  /// Creates a new [StepItem].
  ///
  /// [key] is an optional key for this component.
  /// [title] is the required text description of the step.
  /// [color] is an optional [StepColor] to style the step.
  StepItem({
    super.key,
    this.content,
    required this.title,
    this.color,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    final kcontent = (content != null) ? {'data-content': '$content'} : null;

    yield li(
        classes: 'step ${color?.className ?? ''}',
        attributes: kcontent,
        [text(title)]);
  }
}

/// Defines color variations for step components.
///
/// [StepColor] provides predefined color options to
/// visually distinguish different steps or highlight
/// their status in a step progression.
///
/// Available colors include:
/// - [primary]: Main or default color scheme
/// - [secondary]: Alternative color scheme
/// - [accent]: Highlighted or emphasized color
/// - [neutral]: Neutral or subdued color
/// - [info]: Informational color (typically blue)
/// - [success]: Positive or successful state (typically green)
/// - [warning]: Cautionary or pending state (typically yellow)
/// - [error]: Error or critical state (typically red)
///
/// Example usage:
/// ```dart
/// StepItem(
///   title: 'Processing',
///   color: StepColor.warning
/// )
/// ```
enum StepColor {
  /// Primary color scheme for steps
  primary('step-primary'),

  /// Secondary color scheme for steps
  secondary('step-secondary'),

  /// Accent color for highlighting steps
  accent('step-accent'),

  /// Neutral color for steps
  neutral('step-neutral'),

  /// Informational color for steps
  info('step-info'),

  /// Success color for completed steps
  success('step-success'),

  /// Warning color for pending or cautionary steps
  warning('step-warning'),

  /// Error color for steps with issues
  error('step-error');

  /// Creates a [StepColor] with the specified CSS class name.
  const StepColor(this._className);

  /// The CSS class name associated with this step color.
  final String _className;

  /// Returns the CSS class name for this step color.
  ///
  /// Provides access to the private [_className] field.
  String get className => _className;
}

/// Defines the layout orientation for step components.
///
/// [StepPosition] allows you to specify whether steps
/// should be displayed vertically or horizontally,
/// providing flexibility in step visualization.
///
/// Available positions include:
/// - [vertical]: Steps are arranged in a vertical column
/// - [horizontal]: Steps are arranged in a horizontal row
///
/// Example usage:
/// ```dart
/// Step(
///   position: StepPosition.horizontal,
///   children: [ ... ]
/// )
/// ```
enum StepPosition {
  /// Vertical layout where steps are stacked on top of each other
  vertical('steps-vertical'),

  /// Horizontal layout where steps are arranged side by side
  horizontal('steps-horizontal');

  /// Creates a [StepPosition] with the specified CSS class name.
  const StepPosition(this._className);

  /// The CSS class name associated with this step position.
  final String _className;

  /// Returns the CSS class name for this step position.
  ///
  /// Provides access to the private [_className] field.
  String get className => _className;
}
