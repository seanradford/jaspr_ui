// TODO : check with form action

import 'package:jaspr/jaspr.dart';

class Checkbox extends StatelessComponent {
  final String? value;
  final String? name;
  final CheckboxColor? color;
  final CheckboxSize? size;
  final bool? checked;
  final ValueChanged? onChange;
  final ValueChanged? onInput;

  Checkbox({
    super.key,
    this.value,
    this.name,
    this.color,
    this.size,
    this.checked,
    this.onChange,
    this.onInput,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield input(
      name: name,
      classes: 'checkbox ${color?.className ?? ''} ${size?.className ?? ''}',
      disabled: false,
      type: InputType.checkbox,
      attributes: (checked == true) ? {'checked': ''} : null,
      onChange: (value) => onChange?.call(value),
      onInput: (value) => onInput?.call(value),
      value: value,
      [],
    );
  }
}

enum CheckboxColor {
  primary('checkbox-primary'),
  secondary('checkbox-secondary'),
  accent('checkbox-accent'),
  neutral('checkbox-neutral'),
  info('checkbox-info'),
  success('checkbox-success'),
  warning('checkbox-warning'),
  error('checkbox-error');

  const CheckboxColor(this._className);
  final String _className;
  String get className => _className;
}

enum CheckboxSize {
  xs('checkbox-xs'),
  sm('checkbox-sm'),
  md('checkbox-md'),
  lg('checkbox-lg');

  const CheckboxSize(this._className);
  final String _className;
  String get className => _className;
}
