import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

/// A badge component that displays a label with a count/total.
///
/// The badge consists of a button containing a title and a colored badge element
/// showing a total/count value.
///
/// Example usage:
/// ```dart
/// Badge(
///   total: '5',
///   title: 'Messages',
///   color: BadgeColor.primary,
/// )
/// ```
class Badge extends StatelessComponent {
  /// The text label/title for the badge
  final String title;

  /// Optional color variant for the badge
  /// If not specified, uses the default badge styling
  final BadgeColor? color;

  /// Creates a new badge instance.
  ///
  /// [title] are required parameters.
  /// [color] is optional and determines the badge's color scheme.
  const Badge({
    required this.title,
    this.color = BadgeColor.primary,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield span(
      classes: 'badge '
          '${color != null ? ' ${color!.className}' : ''}',
      [
        text(title),
      ],
    );
  }
}

/// A clickable button with an embedded badge component.
///
/// Similar to [Badge] but includes an [onPressed] callback for handling click events.
/// The badge appears within the button and can be colored using [BadgeColor].
///
/// Example usage:
/// ```dart
/// ButtonWithBadge(
///   total: '3',
///   title: 'Notifications',
///   color: BadgeColor.secondary,
///   onPressed: () => print('Badge clicked'),
/// )
/// ```
class ButtonWithBadge extends StatelessComponent {
  /// The numeric value or total to display in the badge
  final String total;

  /// The text label/title for the button
  final String title;

  /// Optional color variant for the badge
  /// If not specified, uses the default badge styling
  final BadgeColor? color;

  /// Callback function that is called when the button is pressed
  final VoidCallback onPressed;

  /// Creates a new button with badge instance.
  ///
  /// [total], [title], and [onPressed] are required parameters.
  /// [color] is optional and determines the badge's color scheme.
  const ButtonWithBadge({
    required this.total,
    required this.title,
    this.color,
    required this.onPressed,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: 'btn',
      [
        text(title),
        div(
          classes: 'badge '
              '${color != null ? ' ${color!.className}' : ''}',
          [
            text(total),
          ],
        ),
      ],
      onClick: () => onPressed,
    );
  }
}
