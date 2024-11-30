// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:jaspr/jaspr.dart';

class Range extends StatelessComponent {
  final String min;
  final String max;
  final String value;
  final String? name;
  final String step;
  final RangeColor? color;
  final RangeSize? size;
  final ValueChanged? onChange;
  final ValueChanged? onInput;

  Range({
    this.min = '0',
    this.max = '100',
    required this.value,
    this.name,
    this.step = '1',
    this.color,
    this.size,
    this.onInput,
    this.onChange,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield input(
      classes: 'range '
          '${color?.className ?? ''} '
          '${size?.className ?? ''} ',
      name: name,
      type: InputType.range,
      value: value,
      attributes: {'min': min, 'max': max, 'step': step},
      onChange: (value) => onChange?.call(value),
      onInput: (value) => onInput?.call(value),
      [],
    );
  }
}

enum RangeColor {
  primary('range-primary'),
  secondary('range-secondary'),
  accent('range-accent'),
  neutral('range-neutral'),
  info('range-info'),
  success('range-success'),
  warning('range-warning'),
  error('range-error');

  const RangeColor(this._className);

  final String _className;

  String get className => _className;
}

enum RangeSize {
  xs('range-xs'),
  sm('range-sm'),
  md('range-md'),
  lg('range-lg');

  const RangeSize(this._className);

  final String _className;

  String get className => _className;
}
