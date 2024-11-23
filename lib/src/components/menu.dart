// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

/// A component that renders a group of menu items as a list.
///
/// The [GroupMenu] component creates an unordered list with customizable alignment
class GroupMenu extends StatelessComponent {
  /// The list of child components to be rendered as menu items.
  final List<Component> children;

  /// Optional alignment for the menu (vertical or horizontal).
  final MenuAlign? align;

  /// Creates a [GroupMenu] instance.
  ///
  /// [children] - The list of components to be rendered as menu items.
  /// [align] - Optional alignment setting for the menu.
  GroupMenu({
    required this.children,
    required this.align,
  });

  @override
  Iterable<Component> build(Object context) sync* {
    yield ul(
        classes: 'menu '
            '${align != null ? ' ${align!.className}' : ''} ',
        children);
  }
}

/// A component that creates a submenu with expandable/collapsible functionality.
///
/// The [SubMenu] component creates a nested menu structure using HTML-like elements
/// (li, details, summary, ul). It can be used to build hierarchical navigation or
/// content structures.
///
/// Example usage:
/// ```dart
/// SubMenu(
///   parent: "Settings",
///   open: true,
///   children: [
///     MenuItem("General"),
///     MenuItem("Security"),
///   ],
/// )
/// ```
class SubMenu extends StatelessComponent {
  /// The icon class to be used (expects Font Awesome class names).
  final String? icon;

  /// The text label for the parent menu item that contains the submenu.
  final String parent;

  /// Controls whether the submenu is initially expanded (true) or collapsed (false).
  ///
  /// Defaults to true.
  final bool open;

  /// The list of child components to be displayed within the submenu when expanded.
  ///
  /// These components typically represent the submenu items.
  final List<Component> children;

  /// Creates a new [SubMenu] instance.
  ///
  /// [parent] is required and specifies the label for the submenu.
  /// [open] is optional and defaults to true, controlling the initial expand state.
  /// [children] is required and contains the list of components to show in the submenu.
  SubMenu({
    this.icon,
    required this.parent,
    this.open = true,
    required this.children,
  });

  /// Builds the submenu structure using HTML-like components.
  ///
  /// Returns an [Iterable] of components that create a nested list structure with
  /// expandable/collapsible functionality using the details/summary HTML elements.
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield li([
      details(
        open: true,
        [
          if (icon != null) div(classes: '$icon ', []),
          summary([text(parent)]),
          ul(children)
        ],
      ),
    ]);
  }
}

/// A component that renders a group of menu items with titles and links.
///
/// The [GroupMenuItem] component creates an unordered list of clickable menu items,
/// each with a title and href link.
class GroupMenuItem extends StatelessComponent {
  /// The list of menu items to be rendered.
  final List<MenuItem> children;

  /// Optional alignment for the menu (vertical or horizontal).
  final MenuAlign? align;

  /// Creates a [GroupMenuItem] instance.
  ///
  /// [children] - The list of menu items to be rendered.
  /// [align] - Optional alignment setting for the menu.
  GroupMenuItem({
    required this.children,
    required this.align,
  });

  @override
  Iterable<Component> build(Object context) sync* {
    yield ul(
        classes: 'menu'
            '${align != null ? ' ${align!.className}' : ''} ',
        children);
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
class MenuItem extends StatelessComponent {
  /// The display text of the menu item.
  final String title;

  /// The URL that the menu item links to.
  final String href;

  /// Set disabled that the menu item
  final bool disable;

  /// Set Badge for the menu item
  final Badge? badge;

  /// set active style for the menu item
  final bool active;

  MenuItem({
    required this.title,
    required this.href,
    this.disable = false,
    this.badge,
    this.active = false,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield li(classes: '${disable ? 'disabled' : ''} ', [
      a(
          classes: '${active ? 'active' : ''} ',
          [
            text(title),
            if (badge != null) badge!,
          ],
          href: href),
    ]);
  }
}

/// A component that renders a group of menu items with icons.
///
/// The [GroupMenuIcon] component creates an unordered list of clickable menu items,
/// each with an icon, title, and href link.
class GroupMenuIcon extends StatelessComponent {
  /// The list of menu items with icons to be rendered.
  final List<MenuIcon> children;

  /// Optional alignment for the menu (vertical or horizontal).
  final MenuAlign? align;

  /// Creates a [GroupMenuIcon] instance.
  ///
  /// [children] - The list of menu items with icons to be rendered.
  /// [align] - Optional alignment setting for the menu.
  GroupMenuIcon({
    required this.children,
    required this.align,
  });

  @override
  Iterable<Component> build(Object context) sync* {
    yield ul(
      classes: 'menu '
          '${align != null ? ' ${align!.className}' : ''} ',
      children,
    );
  }
}

/// Represents a menu item with an icon, title, and link.
class MenuIcon extends StatelessComponent {
  /// The icon class to be used (expects Font Awesome class names).
  final String icon;

  /// The display text of the menu item.
  final String title;

  /// The URL that the menu item links to.
  final String href;

  /// Set disabled that the menu item
  final bool disable;

  /// Set Badge for the menu item
  final Badge? badge;

  /// set active style for the menu item
  final bool active;

  /// Creates a [MenuIcon] instance.
  ///
  /// [icon] - The Font Awesome icon class name.
  /// [title] - The display text for the menu item.
  /// [href] - The URL that the menu item links to.
  MenuIcon({
    required this.icon,
    required this.title,
    required this.href,
    this.disable = false,
    this.badge,
    this.active = false,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield li(classes: '${disable ? 'disabled' : ''} ', [
      a(
          classes: '${active ? 'active' : ''} ',
          [
            div(classes: '$icon ', []),
            text(title),
            if (badge != null) badge!,
          ],
          href: href),
    ]);
  }
}
