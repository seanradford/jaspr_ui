// ignore_for_file: unnecessary_string_interpolations

import 'package:jaspr/jaspr.dart';

class TextInput extends StatelessComponent {
  final String placeholder;
  final Component? prefix;
  final Component? subfix;
  final InputType type;
  final bool border;
  final bool ghost;
  final InputColor? color;
  final InputSize? size;
  final ValueChanged? onInput;
  final ValueChanged? onChange;

  TextInput({
    super.key,
    this.placeholder = '',
    this.prefix,
    this.subfix,
    this.type = InputType.text,
    this.border = false,
    this.ghost = false,
    this.color,
    this.size,
    this.onInput,
    this.onChange,
  });

  @override
  Iterable<Component> build(Object context) sync* {
    yield label(
        classes: 'input flex items-center gap-2 '
            '${border == true ? 'input-bordered ' : ''}'
            '${ghost == true ? 'input-ghost ' : ''}'
            '${color != null ? '${color!.className} ' : ''}'
            '${size != null ? '${size!.className} ' : ''}',
        [
          if (prefix != null) prefix!,
          input(
              classes: 'grow',
              type: type,
              attributes: {'placeholder': '$placeholder'},
              onChange: (value) => onChange!.call(value),
              onInput: (value) => onInput!.call(value),
              []),
          if (subfix != null) subfix!,
        ]);
  }
}

class TextInputWithLabel extends StatelessComponent {
  final String placeholder;
  final Component? prefix;
  final Component? subfix;
  final InputType type;
  final bool border;
  final bool ghost;
  final InputColor? color;
  final InputSize? size;

  final ValueChanged? onInput;
  final ValueChanged? onChange;

  final String? topLeftTitle;
  final String? topRightTitle;
  final String? bottomLeftTitle;
  final String? bottomRightTitle;

  TextInputWithLabel({
    super.key,
    this.placeholder = '',
    this.prefix,
    this.subfix,
    this.type = InputType.text,
    this.border = false,
    this.ghost = false,
    this.color,
    this.size,
    this.onInput,
    this.onChange,
    this.topLeftTitle,
    this.topRightTitle,
    this.bottomLeftTitle,
    this.bottomRightTitle,
  });

  @override
  Iterable<Component> build(Object context) sync* {
    yield label(
      classes: 'form-control w-full max-w-xs',
      [
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
        TextInput(
          placeholder: placeholder,
          ghost: ghost,
          border: border,
          color: color,
          size: size,
          type: type,
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
      ],
    );
  }
}

enum InputColor {
  primary('input-primary'),
  secondary('input-secondary'),
  accent('input-accent'),
  neutral('input-neutral'),
  info('input-info'),
  success('input-success'),
  warning('input-warning'),
  error('input-error');

  const InputColor(this._className);
  final String _className;
  String get className => _className;
}

enum InputSize {
  xs('input-xs'),
  sm('input-sm'),
  md('input-md'),
  lg('input-lg');

  const InputSize(this._className);
  final String _className;
  String get className => _className;
}
