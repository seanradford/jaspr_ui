// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_string_interpolations

import 'package:jaspr/jaspr.dart';

class Modal extends StatelessComponent {
  final String modalId;
  final String title;
  final String content;
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

class DialogModal extends StatelessComponent {
  final String modalId;
  final String title;
  final String content;
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

class ModalButton extends StatelessComponent {
  final String title;
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
