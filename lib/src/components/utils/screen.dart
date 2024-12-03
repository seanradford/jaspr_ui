import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import '../../colors/background_colors.dart';
import '../../icons/ic.dart';
import '../layout/drawer.dart';
import '../navigation/menu.dart';
import '../navigation/navbar.dart';
import 'icon.dart';

/// Base Screen component with flexible configuration
class Screen extends StatelessComponent {
  final List<Component> children;
  final ScreenType type;
  final BackgroundColor? backgroundColor;
  final bool fullHeight;
  final bool centered;
  final EdgeInsets? padding;

  const Screen(
    this.children, {
    this.type = ScreenType.fullscreen,
    this.backgroundColor,
    this.fullHeight = true,
    this.centered = false,
    this.padding,
  });

  @override
  Iterable<Component> build(BuildContext context) {
    List<String> classes = [
      // Base width
      'w-full',

      // Height handling
      if (type == ScreenType.fullscreen) 'min-h-screen',

      // Centering
      if (type == ScreenType.centered) 'flex items-center justify-center',

      // Background color
      (backgroundColor?.className ?? '')
    ];

    return [div(classes: classes.join(' '), children)];
  }
}

/// Screen type enumeration
enum ScreenType { fullscreen, centered, scrollable }

class Scaffold extends StatelessComponent {
  final Component title;
  final List<Component>? actions;
  final List<Component> content;
  final List<MenuItem> menuItem;

  Scaffold(
    this.content, {
    super.key,
    required this.title,
    this.actions,
    required this.menuItem,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Screen([
      NavBar(
        lead: [
          DrawerButton(
            id: 'drawer',
            icon: Icon(icon: Ic.menu),
          ),
        ],
        title: [
          div(classes: 'px-2 lg:px-4', [
            Link(
              to: '/',
              child: title,
            ),
          ])
        ],
        tails: actions,
      ),
      Drawer(
        id: 'drawer',
        sidebar: [
          SidebarMenu(items: menuItem),
        ],
        content: content,
      ),
    ]);
  }
}
