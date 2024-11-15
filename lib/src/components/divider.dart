// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jaspr/jaspr.dart';

class Divider extends StatelessComponent {
  final String title;

  const Divider({
    required this.title,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: "flex w-full flex-col", [
      div(
        classes: "divider",
        [
          text(title),
        ],
      )
    ]);
  }
}
