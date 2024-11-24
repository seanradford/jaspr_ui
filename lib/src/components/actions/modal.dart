import 'package:jaspr/jaspr.dart';
// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_string_interpolations

/// A collection of modal dialog components for Jaspr web applications.
/// These components provide reusable modal dialogs with different styles and behaviors.
///
/// This file contains three main components:
/// - [Modal]: A basic modal dialog
/// - [DialogModal]: A modal dialog with action buttons
/// - [ModalButton]: A button that triggers a modal dialog

/// A basic modal dialog component that displays content in a popup window.
///
/// The modal can be positioned at the bottom of the screen on mobile devices
/// and in the middle on larger screens using the 'modal-bottom sm:modal-middle' classes.
///
/// Example usage:
/// ```dart
/// Modal(
///   modalId: 'my-modal',
///   title: 'Important Message',
///   content: 'This is the modal content',
///   buttonTitle: 'Done'
/// )
/// ```
class Modal extends StatelessComponent {
  /// Unique identifier for the modal
  final String modalId;

  /// The title displayed at the top of the modal
  final String title;

  /// The main content text of the modal
  final String content;

  /// The text shown on the close button (defaults to 'Close')
  final String buttonTitle;

  Modal(
      {super.key,
      required this.modalId,
      required this.title,
      required this.content,
      this.buttonTitle = 'Close'});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield dialog(
        classes: 'modal modal-bottom sm:modal-middle',
        id: '${modalId}',
        [
          div(classes: 'modal-box', [
            h3(classes: 'text-lg font-bold', [text(title)]),
            p(classes: 'py-4', [text(content)])
          ]),
          form(classes: 'modal-backdrop', method: FormMethod.dialog, [
            button([text(buttonTitle)])
          ])
        ]);
  }
}

/// A modal dialog component with additional styling and a dedicated action button area.
///
/// Similar to [Modal] but includes a dedicated action area at the bottom of the modal
/// with a styled button. This component is useful when you need a more formal dialog
/// with clear action buttons.
///
/// Example usage:
/// ```dart
/// DialogModal(
///   modalId: 'confirm-dialog',
///   title: 'Confirm Action',
///   content: 'Are you sure you want to proceed?',
///   buttonTitle: 'Confirm'
/// )
/// ```
class DialogModal extends StatelessComponent {
  /// Unique identifier for the modal
  final String modalId;

  /// The title displayed at the top of the modal
  final String title;

  /// The main content text of the modal
  final String content;

  /// The text shown on the action button (defaults to 'Close')
  final String buttonTitle;

  DialogModal(
      {super.key,
      required this.modalId,
      required this.title,
      required this.content,
      this.buttonTitle = 'Close'});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield dialog(
        classes: 'modal modal-bottom sm:modal-middle',
        id: '${modalId}',
        [
          div(classes: 'modal-box', [
            h3(classes: 'text-lg font-bold', [text(title)]),
            p(classes: 'py-4', [text(content)]),
            div(classes: 'modal-action', [
              form(method: FormMethod.dialog, [
                button(classes: 'btn', [text(buttonTitle)])
              ])
            ])
          ]),
        ]);
  }
}

/// A button component that triggers a modal dialog when clicked.
///
/// This component creates a button that, when clicked, will show the modal
/// dialog with the specified [modalId].
///
/// Example usage:
/// ```dart
/// ModalButton(
///   title: 'Open Modal',
///   modalId: 'my-modal'
/// )
/// ```
class ModalButton extends StatelessComponent {
  /// The text displayed on the button
  final String title;

  /// The ID of the modal to show when the button is clicked
  final String modalId;

  ModalButton({super.key, required this.title, required this.modalId});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: 'btn',
      attributes: {'onclick': '${'$modalId.showModal()'}'},
      [text(title)],
    );
  }
}
