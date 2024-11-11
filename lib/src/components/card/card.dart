/*
<article class="overflow-hidden rounded-lg shadow transition hover:shadow-lg">
  
</article>
*/

import 'package:jaspr/jaspr.dart';

class Card extends StatelessComponent {
  const Card({super.key, required this.children});

  final List<Component> children;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield article(
      classes: "overflow-hidden rounded-lg shadow transition hover:shadow-lg",
      children,
    );
  }
}
