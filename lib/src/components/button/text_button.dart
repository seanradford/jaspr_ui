/*
<button class="inline-block px-4 py-2 text-sm font-medium text-gray-700 hover:bg-gray-50 focus:relative">
  Edit
</button>
*/

import 'package:jaspr/jaspr.dart';

class TextButton extends StatelessComponent {
  const TextButton({
    super.key,
    required this.title,
    this.textColor = "gray-700",
    this.backgroundColor = "gray-100",
    this.hoverBackground = "gray-50",
    required this.onClick,
  });

  final String title;
  final String? textColor;
  final String? backgroundColor;
  final String? hoverBackground;
  final VoidCallback onClick;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes:
          "inline-block px-4 py-2 text-sm font-medium  bg-$backgroundColor text-$textColor hover:bg-$hoverBackground focus:relative",
      [text(title)],
      onClick: () => onClick(),
    );
  }
}
