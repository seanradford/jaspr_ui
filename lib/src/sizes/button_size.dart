/// Represents different size variations for buttons.
///
/// This enum provides predefined button sizes that can be used to control
/// the dimensions and layout of buttons in a consistent manner. Each size
/// is associated with a specific CSS class name for easy styling.
///
/// Available sizes include:
/// - [xs]: Extra small button
/// - [sm]: Small button
/// - [md]: Medium small button
/// - [lg]: Large button
/// - [wide]: Button with extended horizontal width
/// - [block]: Full-width button
///
/// Example usage:
/// ```dart
/// Button(
///   size: ButtonSize.lg,
///   child: Text('Large Button'),
/// )
/// ```
enum ButtonSize {
  /// A extra small button with reduced dimensions
  xs('btn-xs'),

  /// A small button with reduced dimensions
  sm('btn-sm'),

  /// A medium small button with reduced dimensions
  md('btn-md'),

  /// A large button with increased dimensions
  lg('btn-lg'),

  /// A button with extended horizontal width
  wide('btn-wide'),

  /// A full-width button that occupies the entire container
  block('btn-block');

  /// Creates a [ButtonSize] with the specified CSS class name.
  const ButtonSize(this._className);

  /// The CSS class name associated with this button size.
  final String _className;

  /// Returns the CSS class name for this button size.
  ///
  /// This getter provides access to the private [_className] field.
  String get className => _className;
}
