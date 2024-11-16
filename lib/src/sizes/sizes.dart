/// Defines the available sizes for button components.
/// 
/// These sizes allow for consistent button sizing across the application
/// and follow the DaisyUI sizing conventions.
///
/// Usage example:
/// ```dart
/// Button(
///   title: 'Large Button',
///   size: ButtonSize.large,
/// )
/// ```
enum ButtonSize {
  /// Creates a smaller, more compact button
  small,

  /// Creates a standard-sized button (default)
  normal,

  /// Creates a larger, more prominent button
  large;

  /// Returns the CSS class name for the button size.
  /// 
  /// This getter is used internally to generate the appropriate CSS class name
  /// for the button's size styling.
  String get className {
    switch (this) {
      case ButtonSize.small:
        return 'btn-sm';
      case ButtonSize.normal:
        return '';
      case ButtonSize.large:
        return 'btn-lg';
    }
  }
}