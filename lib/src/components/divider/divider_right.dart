// ignore_for_file: public_member_api_docs, sort_constructors_first
/*
<span class="flex items-center">
  <span class="h-px flex-1 bg-black"></span>
  <span class="pl-6">Lorem, ipsum dolor</span>
</span>
*/

import 'package:jaspr/jaspr.dart';

class DividerRight extends StatelessComponent {
  const DividerRight({
    required this.title,
    required this.backgroundColor,
  });

  final String title;
  final String backgroundColor;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield span(
      classes: "flex items-center",
      [
        span(classes: "h-px flex-1 bg-$backgroundColor", []),
        span(classes: "pl-6", [text(title)]),
      ],
    );
  }
}
