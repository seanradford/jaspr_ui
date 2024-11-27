import 'package:jaspr/jaspr.dart';

/// A customizable alert component that displays a message with an icon and optional type styling.
///
/// The [Alert] component renders a div with ARIA role="alert" for accessibility,
/// containing an icon and message. It supports different visual styles through [AlertType].
///
/// Example usage:
/// ```dart
/// Alert(
///   title: "Successful",
///   message: "Operation successful",
///   icon: "check-circle",
///   type: AlertType.success,
/// )
/// ```

class Alert extends StatelessComponent {
  /// The title text to display in the alert.
  final String? title;

  /// The message text to display in the alert.
  final String message;

  /// The CSS class name for the icon to display.
  final String icon;

  /// Optional type that determines the alert's visual style.
  /// If null, no additional styling class will be applied.
  final AlertType? type;

  /// Creates an [Alert] component.
  ///
  /// [message] is required and contains the alert text to display.
  /// [icon] is required and should be a valid CSS class name for the icon.
  /// [type] is optional and determines the alert's visual styling.
  Alert(
      {super.key,
      this.title,
      required this.message,
      required this.icon,
      this.type});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      attributes: {'role': 'alert'},
      classes: 'alert '
          '${type != null ? '${type!.className}' : ''}',
      [
        // icon
        div(classes: '$icon', []),

        // content
        if (title != null)
          div([
            h3(classes: 'font-bold', [text('$title')]),
            div(classes: 'text-xs', [text('$message')])
          ])
        else
          span([text(message)])
      ],
    );
  }
}

/// Defines the available visual styles for the [Alert] component.
///
/// Each type corresponds to a specific CSS class that will be applied to the alert:
/// - [info]: Standard informational alert
/// - [success]: Positive outcome alert
/// - [warning]: Warning or caution alert
/// - [error]: Error or critical alert
enum AlertType {
  info('alert-info'),
  success('alert-success'),
  warning('alert-warning'),
  error('alert-error');

  const AlertType(this._className);

  /// The CSS class name associated with this alert type.
  final String _className;

  /// Gets the CSS class name for styling the alert.
  String get className => _className;
}
