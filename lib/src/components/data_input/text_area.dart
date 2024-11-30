// TODO : text area component

import 'package:jaspr/jaspr.dart';

class TextArea extends StatelessComponent {
  final String? placeholder;
  final bool border;
  final bool ghost;
  final TextAreaColor? color;
  final TextAreaSize? size;
  final ValueChanged? onInput;
  final ValueChanged? onChange;

  TextArea({
    super.key,
    this.placeholder,
    this.border = false,
    this.ghost = false,
    this.color,
    this.size,
    this.onInput,
    this.onChange,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield textarea(
      classes: 'textarea w-full max-w-xs '
          '${border == true ? 'textarea-bordered ' : ''}'
          '${ghost == true ? 'textarea-ghost ' : ''}'
          '${color != null ? '${color!.className} ' : ''}'
          '${size != null ? '${size!.className} ' : ''}',
      placeholder: '$placeholder',
      onInput: (value) => onInput!.call(value),
      onChange: (value) => onChange!.call(value),
      [],
    );
  }
}

class TextAreaWithLabel extends StatelessComponent {
  final String? placeholder;
  final bool border;
  final bool ghost;
  final TextAreaColor? color;
  final TextAreaSize? size;
  final ValueChanged? onInput;
  final ValueChanged? onChange;

  final String? topLeftTitle;
  final String? topRightTitle;
  final String? bottomLeftTitle;
  final String? bottomRightTitle;

  TextAreaWithLabel({
    super.key,
    this.border = false,
    this.ghost = false,
    this.color,
    this.size,
    this.onInput,
    this.onChange,
    this.placeholder,
    this.topLeftTitle,
    this.topRightTitle,
    this.bottomLeftTitle,
    this.bottomRightTitle,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'form-control', [
      div(classes: 'label', [
        span(
          classes: 'label-text',
          [text('${topLeftTitle ?? ''} ')],
        ),
        span(
          classes: 'label-text-alt',
          [text('${topRightTitle ?? ''} ')],
        ),
      ]),
      TextArea(
        placeholder: '$placeholder',
        border: border,
        ghost: ghost,
        color: color,
        size: size,
        onChange: (value) => onChange!.call(value),
        onInput: (value) => onInput!.call(value),
      ),
      div(classes: 'label', [
        span(
          classes: 'label-text-alt',
          [text('${bottomLeftTitle ?? ''} ')],
        ),
        span(
          classes: 'label-text-alt',
          [text('${bottomRightTitle ?? ''} ')],
        ),
      ]),
    ]);
  }
}

enum TextAreaColor {
  primary('textarea-primary'),
  secondary('textarea-secondary'),
  accent('textarea-accent'),
  neutral('textarea-neutral'),
  info('textarea-info'),
  success('textarea-success'),
  warning('textarea-warning'),
  error('textarea-error');

  const TextAreaColor(this._className);
  final String _className;
  String get className => _className;
}

enum TextAreaSize {
  xs('textarea-xs'),
  sm('textarea-sm'),
  md('textarea-md'),
  lg('textarea-lg');

  const TextAreaSize(this._className);
  final String _className;
  String get className => _className;
}
