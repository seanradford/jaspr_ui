// TODO : toggle component

import 'package:jaspr/jaspr.dart';

class Toggle extends StatelessComponent {
  final bool checked;
  final ToggleColor? color;
  final ToggleSize? size;
  final ValueChanged? onInput;
  final ValueChanged? onChange;

  Toggle({
    super.key,
    this.checked = false,
    this.color,
    this.size,
    this.onInput,
    this.onChange,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield input(
        classes: 'toggle '
            '${color != null ? '${color!.className} ' : ''}'
            '${size != null ? '${size!.className} ' : ''}',
        type: InputType.checkbox,
        attributes: (checked == true) ? {"checked": "checked"} : null,
        onChange: (value) => onChange!.call(value),
        onInput: (value) => onInput!.call(value),
        []);
  }
}

class ToggleWithLabel extends StatelessComponent {
  final bool checked;
  final ToggleColor? color;
  final ToggleSize? size;
  final ValueChanged? onInput;
  final ValueChanged? onChange;
  final String title;

  ToggleWithLabel({
    super.key,
    this.checked = false,
    this.color,
    this.size,
    this.onInput,
    this.onChange,
    required this.title,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'form-control', [
      label(classes: 'label cursor-pointer', [
        span(classes: 'label-text', [text(title)]),
        input(
            classes: 'toggle '
                '${color != null ? '${color!.className} ' : ''}'
                '${size != null ? '${size!.className} ' : ''}',
            type: InputType.checkbox,
            attributes: (checked == true) ? {"checked": "checked"} : null,
            onChange: (value) => onChange!.call(value),
            onInput: (value) => onInput!.call(value),
            []),
      ])
    ]);
  }
}

enum ToggleColor {
  primary('toggle-primary'),
  secondary('toggle-secondary'),
  accent('toggle-accent'),
  neutral('toggle-neutral'),
  info('toggle-info'),
  success('toggle-success'),
  warning('toggle-warning'),
  error('toggle-error');

  const ToggleColor(this._className);
  final String _className;
  String get className => _className;
}

enum ToggleSize {
  xs('toggle-xs'),
  sm('toggle-sm'),
  md('toggle-md'),
  lg('toggle-lg');

  const ToggleSize(this._className);
  final String _className;
  String get className => _className;
}
