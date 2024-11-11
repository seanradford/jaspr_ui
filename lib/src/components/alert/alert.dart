/*
<div role="alert" class="rounded border-s-4 border-red-500 bg-red-50 p-4">
  <strong class="block font-medium text-red-800"> Something went wrong </strong>

  <p class="mt-2 text-sm text-red-700">
    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nemo quasi assumenda numquam deserunt
    consectetur autem nihil quos debitis dolor culpa.
  </p>
</div>
*/

import 'package:jaspr/jaspr.dart';

class Alert extends StatelessComponent {
  const Alert({
    super.key,
    required this.title,
    required this.message,
    this.borderColor = "red-500",
    this.textColor = "red-800",
    this.backgroundColor = "red-100",
  });

  final String title;
  final String message;
  final String? borderColor;
  final String? textColor;
  final String? backgroundColor;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: "rounded border-s-4 border-$borderColor bg-$backgroundColor p-4",
      [
        strong(classes: "block font-medium text-$textColor", [text(title)]),
        p(classes: "mt-2 text-sm text-$textColor", [text(message)])
      ],
    );
  }
}
