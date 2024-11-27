import 'package:jaspr/jaspr.dart';

import '../component.dart';

/// Represents a toast notification container with configurable positions.
///
/// Allows displaying multiple toast items at specified screen positions.
class Toast extends StatelessComponent {
  /// List of toast items to be displayed.
  final List<ToastItem> children;

  /// Positions where the toast notifications will be displayed.
  final List<ToastPosition> positions;

  /// Constructor for creating a Toast component.
  ///
  /// [key] Optional key for identifying the component.
  /// [children] Required list of toast items to display.
  /// [positions] Required list of positions for the toast notifications.
  Toast({super.key, required this.children, required this.positions});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    String kposition = '';
    for (var p in positions) {
      kposition = '$kposition ${p.className} ';
    }
    yield div(classes: 'toast $kposition', children);
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

/// Enum defining possible toast notification positions.
///
/// Provides predefined positions for placing toast notifications
/// on different parts of the screen.
enum ToastPosition {
  /// Positions the toast at the start of the screen.
  start('toast-start'),

  /// Centers the toast horizontally.
  center('toast-center'),

  /// Positions the toast at the end of the screen.
  end('toast-end'),

  /// Positions the toast at the top of the screen.
  top('toast-top'),

  /// Centers the toast vertically.
  middle('toast-middle'),

  /// Positions the toast at the bottom of the screen.
  bottom('toast-bottom');

  /// Constructs a ToastPosition with its corresponding CSS class name.
  const ToastPosition(this._className);

  /// Internal storage for the CSS class name.
  final String _className;

  /// Getter to access the CSS class name associated with the position.
  String get className => _className;
}
