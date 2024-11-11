/*
<a class="block w-full rounded border border-blue-600 bg-blue-600 px-12 py-3 text-sm font-medium text-white hover:bg-transparent hover:text-white focus:outline-none focus:ring active:text-opacity-75 sm:w-auto"
  href="#">
  Get Started
</a>
*/

import 'package:jaspr/jaspr.dart';

class OutlineButton extends StatelessComponent {
  const OutlineButton({
    required this.title,
    required this.url,
    this.textColor = "white",
    this.borderColor = "blue-600",
    this.backgroundColor = "blue-600",
  });

  final String title;
  final String url;
  final String textColor;
  final String borderColor;
  final String backgroundColor;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield a(
      classes:
          "block w-full rounded border border-$borderColor bg-$backgroundColor px-12 py-3 text-sm font-medium text-$textColor hover:bg-transparent hover:text-$textColor focus:outline-none focus:ring active:text-opacity-75 sm:w-auto",
      [text(title)],
      href: url,
    );
  }
}
