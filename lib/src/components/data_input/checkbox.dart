import 'package:jaspr/jaspr.dart';

/// A customizable checkbox component for web applications using Jaspr.
///
/// The [Checkbox] class provides a flexible and configurable checkbox input
/// that allows customization of color, size, and behavior. It supports
/// various predefined color schemes and sizes.
///
/// Example usage:
/// ```dart
/// Checkbox(
///   value: 'option1',
///   name: 'myCheckbox',
///   color: CheckboxColor.primary,
///   size: CheckboxSize.md,
///   checked: true,
///   onChange: (value) => print('Checkbox changed: $value'),
/// )
/// ```
class Checkbox extends StatelessComponent {
  /// The value associated with the checkbox when submitted in a form.
  // final String? value;

  /// The name attribute for the checkbox input, used in form submissions.
  final String? name;

  /// The color scheme of the checkbox.
  ///
  /// Uses predefined color options from [CheckboxColor] enum.
  final CheckboxColor? color;

  /// The size of the checkbox.
  ///
  /// Uses predefined size options from [CheckboxSize] enum.
  final CheckboxSize? size;

  /// Whether the checkbox is initially checked.
  final bool? checked;

  /// Callback function triggered when the checkbox value changes.
  ///
  /// Provides the new value of the checkbox.
  final ValueChanged? onChange;

  /// Callback function triggered on input event.
  ///
  /// Provides the current input value.
  final ValueChanged? onInput;

  final bool? disabled;

  /// Constructs a [Checkbox] with optional configuration parameters.
  ///
  /// [key] is used for widget identification in the component tree.
  /// [value] sets the value attribute of the checkbox.
  /// [name] sets the name attribute for form submissions.
  /// [color] determines the visual color scheme of the checkbox.
  /// [size] determines the size of the checkbox.
  /// [checked] sets the initial checked state.
  /// [onChange] is called when the checkbox state changes.
  /// [onInput] is called during input interactions.
  Checkbox({
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

  /// Builds the checkbox input component.
  ///
  /// Generates an input element with dynamic classes, attributes,
  /// and event handlers based on the provided configuration.
  ///
  /// Returns an iterable of components (in this case, a single input element).
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield input(
      name: name,
      // Dynamically apply color and size classes
      classes: 'checkbox ${color?.className ?? ''} ${size?.className ?? ''}',
      disabled: disabled,
      type: InputType.checkbox,
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

/// Defines color variants for the checkbox component.
///
/// Provides a set of predefined color schemes that can be applied
/// to customize the visual appearance of the checkbox.
enum CheckboxColor {
  /// Primary color scheme
  primary('checkbox-primary'),

  /// Secondary color scheme
  secondary('checkbox-secondary'),

  /// Accent color scheme
  accent('checkbox-accent'),

  /// Neutral color scheme
  neutral('checkbox-neutral'),

  /// Informational color scheme
  info('checkbox-info'),

  /// Success color scheme
  success('checkbox-success'),

  /// Warning color scheme
  warning('checkbox-warning'),

  /// Error color scheme
  error('checkbox-error');

  /// Constructor for creating a color variant with an associated CSS class name
  const CheckboxColor(this._className);

  /// The underlying CSS class name for the color variant
  final String _className;

  /// Getter to access the CSS class name
  String get className => _className;
}

/// Defines size variants for the checkbox component.
///
/// Provides a set of predefined sizes that can be applied
/// to customize the dimensions of the checkbox.
enum CheckboxSize {
  /// Extra small size
  xs('checkbox-xs'),

  /// Small size
  sm('checkbox-sm'),

  /// Medium size (default)
  md('checkbox-md'),

  /// Large size
  lg('checkbox-lg');

  /// Constructor for creating a size variant with an associated CSS class name
  const CheckboxSize(this._className);

  /// The underlying CSS class name for the size variant
  final String _className;

  /// Getter to access the CSS class name
  String get className => _className;
}

class CheckboxWithLabel extends StatelessComponent {
  final String title;
  final String? name;
  final ValueChanged? onChange;
  final ValueChanged? onInput;
  final CheckboxColor? color;
  final CheckboxSize? size;
  final bool? checked;
  final bool? disabled;

  CheckboxWithLabel(
      {super.key,
      required this.title,
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
      label(classes: 'cursor-pointer label', [
        span(classes: 'label-text', [text(title)]),
        Checkbox(
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
