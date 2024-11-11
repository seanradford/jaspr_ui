/*
<span class="inline-flex -space-x-px overflow-hidden rounded-md border bg-white shadow-sm">
  <button
    class="inline-block px-4 py-2 text-sm font-medium text-gray-700 hover:bg-gray-50 focus:relative"
  >
    Edit
  </button>
</span>
*/

import 'package:jaspr/jaspr.dart';

class ButtonGroup extends StatelessComponent {
  const ButtonGroup({
    super.key,
    required this.children,
  });

  final List<Component> children;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield span(
      classes:
          "inline-flex -space-x-px overflow-hidden rounded-md border bg-white shadow-sm",
      children,
    );
  }
}
