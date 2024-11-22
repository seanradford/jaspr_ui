import 'package:jaspr/jaspr.dart';

/// A component that renders a group of menu items as a list.
/// 
/// The [GroupMenu] component creates an unordered list with customizable alignment
/// and highlights the currently selected item based on [currentIndex].
class GroupMenu extends StatelessComponent {
  /// The list of child components to be rendered as menu items.
  final List<Component> children;
  
  /// The index of the currently selected menu item.
  final int currentIndex;
  
  /// Optional alignment for the menu (vertical or horizontal).
  final MenuAlign? align;

  /// Creates a [GroupMenu] instance.
  /// 
  /// [children] - The list of components to be rendered as menu items.
  /// [currentIndex] - Index of the currently selected item.
  /// [align] - Optional alignment setting for the menu.
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

/// A component that renders a group of menu items with titles and links.
/// 
/// The [GroupMenuItem] component creates an unordered list of clickable menu items,
/// each with a title and href link.
class GroupMenuItem extends StatelessComponent {
  /// The list of menu items to be rendered.
  final List<MenuItem> children;
  
  /// The index of the currently selected menu item.
  final int currentIndex;
  
  /// Optional alignment for the menu (vertical or horizontal).
  final MenuAlign? align;

  /// Creates a [GroupMenuItem] instance.
  /// 
  /// [children] - The list of menu items to be rendered.
  /// [currentIndex] - Index of the currently selected item.
  /// [align] - Optional alignment setting for the menu.
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

/// Defines the alignment options for menu components.
enum MenuAlign {
  /// Vertical menu alignment
  vertical,
  
  /// Horizontal menu alignment
  horizontal;

  /// Returns the CSS class name corresponding to the menu alignment.
  String get className {
    switch (this) {
      case MenuAlign.vertical:
        return 'menu-vertical';
      case MenuAlign.horizontal:
        return 'menu-horizontal';
    }
  }
}

/// Represents a menu item with a title and link.
class MenuItem {
  /// The display text of the menu item.
  String title;
  
  /// The URL that the menu item links to.
  String href;

  /// Creates a [MenuItem] instance.
  /// 
  /// [title] - The display text for the menu item.
  /// [href] - The URL that the menu item links to.
  MenuItem({
    required this.title,
    required this.href,
  });
}

/// A component that renders a group of menu items with icons.
/// 
/// The [GroupMenuIcon] component creates an unordered list of clickable menu items,
/// each with an icon, title, and href link.
class GroupMenuIcon extends StatelessComponent {
  /// The list of menu items with icons to be rendered.
  final List<MenuIcon> children;
  
  /// The index of the currently selected menu item.
  final int currentIndex;
  
  /// Optional alignment for the menu (vertical or horizontal).
  final MenuAlign? align;

  /// Creates a [GroupMenuIcon] instance.
  /// 
  /// [children] - The list of menu items with icons to be rendered.
  /// [currentIndex] - Index of the currently selected item.
  /// [align] - Optional alignment setting for the menu.
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

/// Represents a menu item with an icon, title, and link.
class MenuIcon {
  /// The icon class to be used (expects Font Awesome class names).
  String icon;
  
  /// The display text of the menu item.
  String title;
  
  /// The URL that the menu item links to.
  String href;

  /// Creates a [MenuIcon] instance.
  /// 
  /// [icon] - The Font Awesome icon class name.
  /// [title] - The display text for the menu item.
  /// [href] - The URL that the menu item links to.
  MenuIcon({
    required this.icon,
    required this.title,
    required this.href,
  });
}