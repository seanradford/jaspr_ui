import 'package:jaspr/jaspr.dart';

/// A modal dialog component that displays a title, message, and a confirmation button.
///
/// This component creates a modal dialog box using HTML dialog element with styling
/// classes. It provides a simple interface for displaying information or confirmations
/// to users with a consistent layout and styling.
///
/// The dialog includes:
/// - A title header
/// - A message body
/// - A confirmation button
///
/// Example usage:
/// ```dart
/// Dialog(
///   id: 'confirmation-dialog',
///   title: 'Confirm Action',
///   message: 'Are you sure you want to proceed?',
///   buttonTitle: 'OK',
/// )
/// ```
class Dialog extends StatelessComponent {
  /// Creates a Dialog component with the specified configuration.
  ///
  /// Parameters:
  /// - [id]: Optional unique identifier for the dialog element
  /// - [title]: The header text displayed at the top of the dialog
  /// - [message]: The main content text displayed in the dialog body
  /// - [buttonTitle]: The text displayed on the confirmation button
  const Dialog({
    this.id,
    required this.title,
    required this.message,
    required this.buttonTitle,
  });

  /// Optional unique identifier for the dialog
  /// Useful for programmatically controlling the dialog through JavaScript
  final String? id;

  /// The text displayed in the dialog header
  /// Rendered with larger font size and bold styling
  final String title;

  /// The main content message displayed in the dialog body
  final String message;

  /// The text displayed on the confirmation button
  /// Used to close or confirm the dialog
  final String buttonTitle;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield dialog(id: id, classes: "modal", [
      div(classes: "modal-box", [
        h3(
          classes: "text-lg font-bold",
          [
            text(title),
          ],
        ),
        p(
          [
            text(message),
          ],
        ),
        div(
          classes: "modal-action",
          [
            form(method: FormMethod.dialog, [
              button(
                classes: "btn",
                [
                  text(buttonTitle),
                ],
              )
            ]),
          ],
        )
      ])
    ]);
  }
}