// ignore_for_file: public_member_api_docs, sort_constructors_first

// TODO : drawer component

import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

class Drawer extends StatelessComponent {
  final bool end;
  final bool open;
  final String id;
  final List<Component> content;
  final List<Component> sidebar;

  Drawer({
    this.end = false,
    this.open = false,
    required this.id,
    required this.content,
    required this.sidebar,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'drawer lg:drawer-open'
          '${end == true ? 'drawer-end' : ''} '
          '${open == true ? 'drawer-open' : ''} ',
      [
        // drawer-toggle
        input(
            id: '$id', type: InputType.checkbox, classes: 'drawer-toggle', []),

        // drawer-content
        div(classes: 'drawer-content', content),

        // drawer-side and drawer overlay
        div(
          classes: 'drawer-side',
          [
            label(
                classes: 'drawer-overlay',
                attributes: {'for': '$id', 'aria-label': 'close sidebar'},
                []),
            ...sidebar,
          ],
        ),
      ],
    );
  }
  //
}

class DrawerButton extends StatelessComponent {
  final String id;
  final String icon;

  DrawerButton({super.key, required this.id, required this.icon});
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield label(
        classes: 'btn btn-circle btn-ghost drawer-button lg:hidden',
        attributes: {
          'type': 'checkbox',
          'for': '$id',
          'aria-label': 'open sidebar'
        },
        [
          div(classes: '$icon', []),
        ]);
  }
}

class SidebarMenu extends StatelessComponent {
  final List<MenuItem> items;

  SidebarMenu({super.key, required this.items});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield GroupMenuItem(
      children: items,
      align: MenuAlign.vertical,
      style: 'bg-base-200 text-base-content min-h-full w-80 p-4',
    );
  }
}
