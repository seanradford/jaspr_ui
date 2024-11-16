// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jaspr/jaspr.dart';

import '../../jaspr_ui.dart';

class Button extends StatelessComponent {
  final String title;
  final DsColor? color;
  final VoidCallback? onPressed;
  final Map<String, String>? attributes;

  const Button({
    required this.title,
    this.color,
    this.onPressed,
    this.attributes,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: 'btn '
          '${color != null ? ' btn-${color!.name}' : ''}',
      [
        text(title),
      ],
      onClick: () => onPressed?.call(),
      attributes: attributes,
    );
  }
}

class OutLineButton extends StatelessComponent {
  final String title;
  final DsColor? color;
  final VoidCallback? onPressed;
  final Map<String, String>? attributes;

  const OutLineButton({
    required this.title,
    this.color,
    this.onPressed,
    this.attributes,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: 'btn btn-outline '
          '${color != null ? ' btn-${color!.name}' : ''}',
      [
        text(title),
      ],
      onClick: () => onPressed?.call(),
      attributes: attributes,
    );
  }
}

class GlassButton extends StatelessComponent {
  final String title;
  final VoidCallback? onPressed;
  final Map<String, String>? attributes;

  const GlassButton({
    required this.title,
    this.onPressed,
    this.attributes,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: "btn glass",
      [
        text(title),
      ],
      onClick: () => onPressed?.call(),
      attributes: attributes,
    );
  }
}

class BlockButton extends StatelessComponent {
  final String title;
  final VoidCallback? onPressed;
  final Map<String, String>? attributes;

  const BlockButton({
    required this.title,
    this.onPressed,
    this.attributes,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: "btn btn-block",
      [
        text(title),
      ],
      onClick: () => onPressed?.call(),
      attributes: attributes,
    );
  }
}

class IconButton extends StatelessComponent {
  final String title;
  final VoidCallback? onPressed;
  final Map<String, String>? attributes;
  final String icon;

  const IconButton({
    required this.title,
    this.onPressed,
    this.attributes,
    required this.icon,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: "btn",
      [
        span(classes: 'icon', [i(classes: 'fas fa-$icon', [])]),
        text(title),
      ],
      onClick: () => onPressed?.call(),
      attributes: attributes,
    );
  }
}
