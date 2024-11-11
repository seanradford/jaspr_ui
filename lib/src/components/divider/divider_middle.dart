// ignore_for_file: public_member_api_docs, sort_constructors_first
/*
<span class="flex items-center">
  <span class="h-px flex-1 bg-black"></span>
  <span class="shrink-0 px-6">Lorem, ipsum dolor</span>
  <span class="h-px flex-1 bg-black"></span>
</span>
*/

import 'package:jaspr/jaspr.dart';

class DividerMiddle extends StatelessComponent {
  const DividerMiddle({
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
        span(classes: "h-px flex-1 bg-$backgroundColor", []),
        span(classes: "shrink-0 px-6", [text(title)]),
        span(classes: "h-px flex-1 bg-$backgroundColor", []),
      ],
    );
  }
}
