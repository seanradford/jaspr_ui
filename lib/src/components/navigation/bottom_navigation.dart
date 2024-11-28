// ignore_for_file: unnecessary_string_interpolations

import 'package:jaspr/jaspr.dart';

class BottomNavigation extends StatelessComponent {
  final List<BottomNavigationItem> children;
  final int currentIndex;
  final ValueChanged<int> onChanged;

  BottomNavigation(
      {super.key,
      required this.children,
      required this.currentIndex,
      required this.onChanged});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'btm-nav',
        List.generate(children.length, (index) {
          final item = children[index];
          final icon = item.icon;
          final title = item.title;
          return button(
              classes: '${index == currentIndex ? 'active' : ''}',
              onClick: () => onChanged.call(index),
              [
                div(classes: '$icon', []),
                span(classes: 'btm-nav-label', [text(title)])
              ]);
        }));
  }
}

class BottomNavigationItem {
  final String title;
  final String? icon;

  BottomNavigationItem({required this.title, this.icon = ''});
}
