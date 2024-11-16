import 'package:jaspr/jaspr.dart';

import 'package:jaspr_ui/jaspr_ui.dart';

class Badge extends StatelessComponent {
  final String total;
  final String title;
  final DsColor? color;

  const Badge({
    required this.total,
    required this.title,
    this.color,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(classes: 'btn', [
      text(title),
      div(
        classes: 'badge '
            '${color != null ? ' badge-${color!.name}' : ''}',
        [
          text(total),
        ],
      ),
    ]);
  }
}

class ButtonWithBadge extends StatelessComponent {
  final String total;
  final String title;
  final DsColor? color;
  final VoidCallback onPressed;

  const ButtonWithBadge({
    required this.total,
    required this.title,
    this.color,
    required this.onPressed,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: 'btn',
      [
        text(title),
        div(
          classes: 'badge '
              '${color != null ? ' badge-${color!.name}' : ''}',
          [
            text(total),
          ],
        ),
      ],
      onClick: () => onPressed,
    );
  }
}
