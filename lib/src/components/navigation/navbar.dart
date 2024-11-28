// ignore_for_file: public_member_api_docs, sort_constructors_first
// TODO : navbar component

import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

class NavBar extends StatelessComponent {
  final TextColor? foregroundColor;
  final BackgroundColor? backgroundColor;
  final List<Component>? lead;
  final List<Component>? actions;
  final List<Component> title;
  final bool? centerTitle;

  NavBar({
    this.backgroundColor = BackgroundColor.base100,
    this.foregroundColor,
    this.lead,
    this.actions,
    required this.title,
    this.centerTitle = false,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'navbar ${backgroundColor?.className ?? ''} '
            ' ${foregroundColor?.className ?? ''}',
        [
          //
          if (lead != null) div(classes: 'navbar-start', lead ?? []),

          //
          (centerTitle == true)
              ? div(classes: 'navbar-center', title)
              : div(classes: 'flex-1', title),

          //
          if (actions != null) div(classes: 'navbar-end', actions ?? [])
        ]);
  }
}
