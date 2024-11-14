// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jaspr/jaspr.dart';

class Button extends StatelessComponent {
  
  final String title;
  final VoidCallback? onClick;
  final Map<String, String>? attributes;

  const Button({
    required this.title,
    this.onClick,
    this.attributes,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: "btn",
      [text(title)],
      onClick: () => onClick?.call(),
      attributes: attributes,
    );
  }
}

class OutLineButton extends StatelessComponent {
  
  final String title;
  final VoidCallback? onClick;
  final Map<String, String>? attributes;

  const OutLineButton({
    required this.title,
    this.onClick,
    this.attributes,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: "btn btn-outline",
      [text(title)],
      onClick: () => onClick?.call(),
      attributes: attributes,
    );
  }
}

class GlassButton extends StatelessComponent { 
  final String title;
  final VoidCallback? onClick;
  final Map<String, String>? attributes;

  const GlassButton({
    required this.title,
    this.onClick,
    this.attributes,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: "btn glass",
      [text(title)],
      onClick: () => onClick?.call(),
      attributes: attributes,
    );
  }
}
