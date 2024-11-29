import 'package:jaspr/jaspr.dart';

/// A customizable file input component for web applications using Jaspr.
///
/// The [FileInput] class provides a flexible and configurable file upload input
/// that allows customization of color, size, and file selection behavior.
/// It supports various predefined color schemes and sizes to match different
/// design requirements.
///
/// Example usage:
/// ```dart
/// FileInput(
///   name: 'documentUpload',
///   color: FileInputColor.primary,
///   size: FileInputSize.md,
///   onChange: (file) => handleFileSelection(file),
/// )
/// ```
///
/// This component creates a standard HTML file input with additional
/// styling and event handling capabilities.
class FileInput extends StatelessComponent {
  /// The initial value of the file input.
  ///
  /// Typically used to set a default or pre-selected file path.
  final String? value;

  /// The name attribute for the file input, used in form submissions.
  ///
  /// Provides an identifier for the input when the form is submitted.
  final String? name;

  /// The color scheme of the file input.
  ///
  /// Uses predefined color options from [FileInputColor] enum to
  /// customize the visual appearance of the input.
  final FileInputColor? color;

  /// The size of the file input.
  ///
  /// Uses predefined size options from [FileInputSize] enum to
  /// control the dimensions of the input field.
  final FileInputSize? size;

  /// Callback function triggered when a file is selected or the input changes.
  ///
  /// Provides the selected file or input value, allowing for immediate
  /// processing or validation of the file selection.
  final ValueChanged? onChange;

  /// Callback function triggered during file input interactions.
  ///
  /// Allows for additional handling of input events beyond file selection.
  final ValueChanged? onInput;

  /// Constructs a [FileInput] with optional configuration parameters.
  ///
  /// [key] is used for widget identification in the component tree.
  /// [value] sets the initial value of the file input.
  /// [name] sets the name attribute for form submissions.
  /// [color] determines the visual color scheme of the input.
  /// [size] determines the size of the input field.
  /// [onChange] is called when a file is selected.
  /// [onInput] is called during input interactions.
  FileInput({
    super.key,
    this.value,
    this.name,
    this.color,
    this.size,
    this.onChange,
    this.onInput,
  });

  /// Builds the file input component.
  ///
  /// Generates an input element with:
  /// - Dynamic CSS classes for color and size
  /// - File input type
  /// - Event handlers for change and input events
  ///
  /// Returns an iterable of components (a single input element).
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield input(
      name: name,
      // Combine default file input classes with color and size classes
      classes:
          'file-input file-input-bordered w-full max-w-xs ${color?.className ?? ''} ${size?.className ?? ''}',
      disabled: false,
      type: InputType.file,
      // Trigger onChange callback with the selected file
      onChange: (value) => onChange?.call(value),
      // Trigger onInput callback during input interactions
      onInput: (value) => onInput?.call(value),
      value: value,
      [],
    );
  }
}

/// Defines color variants for the file input component.
///
/// Provides a comprehensive set of predefined color schemes that can be
/// applied to customize the visual appearance of the file input.
///
/// Each enum value corresponds to a specific CSS class that can be used
/// to style the file input component.
enum FileInputColor {
  /// Primary color scheme
  primary('file-input-primary'),

  /// Secondary color scheme
  secondary('file-input-secondary'),

  /// Accent color scheme
  accent('file-input-accent'),

  /// Neutral color scheme
  neutral('file-input-neutral'),

  /// Informational color scheme
  info('file-input-info'),

  /// Success color scheme
  success('file-input-success'),

  /// Warning color scheme
  warning('file-input-warning'),

  /// Error color scheme
  error('file-input-error');

  /// Constructor for creating a color variant with an associated CSS class name
  const FileInputColor(this._className);

  /// The underlying CSS class name for the color variant
  final String _className;

  /// Getter to access the CSS class name
  String get className => _className;
}

/// Defines size variants for the file input component.
///
/// Provides a set of predefined sizes that can be applied
/// to customize the dimensions of the file input field.
///
/// Each enum value represents a different size option with
/// a corresponding CSS class for styling.
enum FileInputSize {
  /// Extra small size
  xs('file-input-xs'),

  /// Small size
  sm('file-input-sm'),

  /// Medium size (default)
  md('file-input-md'),

  /// Large size
  lg('file-input-lg');

  /// Constructor for creating a size variant with an associated CSS class name
  const FileInputSize(this._className);

  /// The underlying CSS class name for the size variant
  final String _className;

  /// Getter to access the CSS class name
  String get className => _className;
}
