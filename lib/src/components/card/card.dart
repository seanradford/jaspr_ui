/*
<article class="overflow-hidden rounded-lg shadow transition hover:shadow-lg">
  
</article>
*/

import 'package:jaspr/jaspr.dart';

class Card extends StatelessComponent {
  const Card(this.children, {super.key} );

  final List<Component> children;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield article(
      classes: "overflow-hidden rounded-lg shadow-lg p-4 sm:p-6",
      children,
    );
  }
}
