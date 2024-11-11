// ignore_for_file: public_member_api_docs, sort_constructors_first
/*
<span class="flex items-center">
  <span class="pr-6">Lorem, ipsum dolor</span>
  <span class="h-px flex-1 bg-black"></span>
</span>
*/

import 'package:jaspr/jaspr.dart';

class DividerLeft extends StatelessComponent {
  const DividerLeft({
    required this.title,
    this.backgroundColor = 'black',
  });

  final String title;
  final String backgroundColor;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield span(
      classes: "flex items-center",
      [
        span(classes: "pr-6", [text(title)]),
        span(classes: "h-px flex-1 bg-$backgroundColor", []),
      ],
    );
  }
}
