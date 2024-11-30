import 'package:jaspr/jaspr.dart';

import '../component.dart';

/// Represents a toast notification container with configurable positions.
///
/// Allows displaying multiple toast items at specified screen positions.
class Toast extends StatelessComponent {
  /// List of toast items to be displayed.
  final List<ToastItem> children;

  /// Positions where the toast notifications will be displayed.
  final ToastPosition? positions;

  /// Constructor for creating a Toast component.
  ///
  /// [key] Optional key for identifying the component.
  /// [children] Required list of toast items to display.
  /// [positions] Optional positions for the toast notifications.
  Toast({super.key, required this.children, required this.positions});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'toast ${positions ?? ''}', children);
  }
}

/// Represents an individual toast notification item.
///
/// Displays a message with a configurable alert type for visual distinction.
class ToastItem extends StatelessComponent {
  /// The message content of the toast notification.
  final String message;

  /// The visual style of the toast notification.
  final AlertType alertType;

  /// Constructor for creating a ToastItem.
  ///
  /// [key] Optional key for identifying the component.
  /// [message] Required text to display in the toast.
  /// [alertType] Optional alert type, defaults to [AlertType.info].
  ToastItem({
    super.key,
    required this.message,
    this.alertType = AlertType.info,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'alert '
            ' ${alertType.className} ',
        [
          span([text(message)])
        ]);
  }
}

/// An enum that defines the different positions for a toast on the screen.
///
/// Each position corresponds to a specific CSS class that can be used to style
/// the toast accordingly.
enum ToastPosition {
  /// Positions the toast at the start of the screen (platform-specific).
  left('toast-start'),

  /// Positions the toast at the center of the screen (platform-specific).
  center('toast-center'),

  /// Positions the toast at the end of the screen (platform-specific).
  right('toast-end'),

  /// Positions the toast at the top of the screen.
  top('toast-top'),

  /// Positions the toast at the top left corner of the screen.
  topLeft('toast-top toast-start'),

  /// Positions the toast at the top right corner of the screen.
  topRight('toast-top toast-end'),

  /// Positions the toast at the middle of the screen (vertically).
  middle('toast-middle'),

  /// Positions the toast at the middle left corner of the screen.
  middleLeft('toast-start toast-middle'),

  /// Positions the toast at the middle right corner of the screen.
  middleRight('toast-end toast-middle'),

  /// Positions the toast at the bottom of the screen.
  bottom('toast-bottom'),

  /// Positions the toast at the bottom left corner of the screen.
  bottomLeft('toast-bottom toast-start'),

  /// Positions the toast at the bottom right corner of the screen.
  bottomRight('toast-bottom toast-end');

  const ToastPosition(this._className);

  final String _className;

  /// Gets the CSS class name for this toast position.
  String get className => _className;
}
