import 'package:jaspr/jaspr.dart';

class GroupMenu extends StatelessComponent {
  final List<Component> children;
  final int currentIndex;
  final MenuAlign? align;
  GroupMenu({
    required this.children,
    required this.currentIndex,
    required this.align,
  });

  @override
  Iterable<Component> build(Object context) sync* {
    yield ul(
      classes: 'menu '
          '${align != null ? ' ${align!.className}' : ''} ',
      List.generate(children.length, (index) {
        final item = children[index];
        return div(
          classes: '${index == currentIndex ? 'active' : ''} ',
          [item],
        );
      }),
    );
  }
}

class GroupMenuItem extends StatelessComponent {
  final List<MenuItem> children;
  final int currentIndex;
  final MenuAlign? align;
  GroupMenuItem({
    required this.children,
    required this.currentIndex,
    required this.align,
  });

  @override
  Iterable<Component> build(Object context) sync* {
    yield ul(
      classes: 'menu'
          '${align != null ? ' ${align!.className}' : ''} ',
      List.generate(children.length, (index) {
        final item = children[index];
        final title = item.title;
        final href = item.href;
        return li(classes: index == currentIndex ? 'active' : '', [
          a([text(title)], href: href)
        ]);
      }),
    );
  }
}

enum MenuAlign {
  vertical,
  horizontal;

  String get className {
    switch (this) {
      case MenuAlign.vertical:
        return 'menu-vertical';
      case MenuAlign.horizontal:
        return 'menu-horizontal';
    }
  }
}

class MenuItem {
  String title;
  String href;
  MenuItem({
    required this.title,
    required this.href,
  });
}

class GroupMenuIcon extends StatelessComponent {
  final List<MenuIcon> children;
  final int currentIndex;
  final MenuAlign? align;
  GroupMenuIcon({
    required this.children,
    required this.currentIndex,
    required this.align,
  });

  @override
  Iterable<Component> build(Object context) sync* {
    yield ul(
      classes: 'menu '
          '${align != null ? ' ${align!.className}' : ''} ',
      List.generate(children.length, (index) {
        final item = children[index];
        final icon = item.icon;
        final title = item.title;
        final href = item.href;
        return li(
            classes: 'far $icon '
                '${index == currentIndex ? 'active' : ''} ',
            [
              a([text(title)], href: href)
            ]);
      }),
    );
  }
}

class MenuIcon {
  String icon;
  String title;
  String href;
  MenuIcon({
    required this.icon,
    required this.title,
    required this.href,
  });
}
