/*
<!-- Solid -->
<span class="whitespace-nowrap rounded-full bg-purple-100 px-2.5 py-0.5 text-sm text-purple-700">
  Live
</span>

<!-- Outlined -->
<span class="whitespace-nowrap rounded-full border border-purple-500 px-2.5 py-0.5 text-sm text-purple-700">
  Live
</span>
*/

import 'package:jaspr/jaspr.dart';

class Badge extends StatelessComponent {
  const Badge({
    super.key,
    required this.title,
    this.borderColor = "purple-500",
    this.textColor = "purple-700",
    this.backgroundColor = "purple-100",
  });

  final String title;
  final String? borderColor;
  final String? textColor;
  final String? backgroundColor;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield span(
      classes:
          "whitespace-nowrap rounded-full border border-$borderColor bg-$backgroundColor px-2.5 py-0.5 text-sm text-$textColor",
      [text(title)],
    );
  }
}
