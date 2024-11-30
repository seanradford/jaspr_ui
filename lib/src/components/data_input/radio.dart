import 'package:jaspr/jaspr.dart';

class Radio extends StatelessComponent {
  final String? name;

  final RadioColor? color;

  final RadioSize? size;

  final bool? checked;

  final ValueChanged? onChange;

  final ValueChanged? onInput;

  final bool? disabled;

  Radio({
    super.key,
    // this.value,
    this.name,
    this.color,
    this.size,
    this.checked,
    this.onChange,
    this.onInput,
    this.disabled,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield input(
      name: name,
      // Dynamically apply color and size classes
      classes: 'radio ${color?.className ?? ''} ${size?.className ?? ''}',
      disabled: disabled,
      type: InputType.radio,
      // Add 'checked' attribute if checked is true
      attributes: (checked == true) ? {'checked': ''} : null,
      // Trigger onChange callback with the input value
      onChange: (value) => onChange?.call(value),
      // Trigger onInput callback with the input value
      onInput: (value) => onInput?.call(value),
      [],
    );
  }
}

enum RadioColor {
  primary('radio-primary'),
  secondary('radio-secondary'),
  accent('radio-accent'),
  neutral('radio-neutral'),
  info('radio-info'),
  success('radio-success'),
  warning('radio-warning'),
  error('radio-error');

  const RadioColor(this._className);

  final String _className;

  String get className => _className;
}

enum RadioSize {
  xs('radio-xs'),
  sm('radio-sm'),
  md('radio-md'),
  lg('radio-lg');

  const RadioSize(this._className);

  final String _className;

  String get className => _className;
}

class RadioWithLabel extends StatelessComponent {
  final String labelTitle;
  final String? name;
  final ValueChanged? onChange;
  final ValueChanged? onInput;
  final RadioColor? color;
  final RadioSize? size;
  final bool? checked;
  final bool? disabled;

  RadioWithLabel(
      {super.key,
      required this.labelTitle,
      this.name,
      this.onChange,
      this.onInput,
      this.color,
      this.size,
      this.checked,
      this.disabled});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'form-control', [
      label(classes: 'label cursor-pointer', [
        span(classes: 'label-text', [text(labelTitle)]),
        Radio(
          name: name,
          color: color,
          size: size,
          checked: true,
          disabled: disabled,
          onChange: (value) => onChange?.call(value),
          onInput: (value) => onInput?.call(value),
        )
      ]),
    ]);
  }
}
