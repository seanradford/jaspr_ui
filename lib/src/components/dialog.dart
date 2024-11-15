// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:jaspr/jaspr.dart';

class Dialog extends StatelessComponent {
  final String? id;
  final String title;
  final String message;
  final String buttonTitle;

  const Dialog({
    this.id,
    required this.title,
    required this.message,
    required this.buttonTitle,
  });

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
