/// Represents the size variants for buttons in the application.
///
/// Each [ButtonSize] corresponds to a specific CSS class that defines
/// the button's dimensions and layout behavior.
///
/// The available sizes are:
/// - [small]: A small-sized button with minimal padding
/// - [large]: A large-sized button with increased padding
/// - [wide]: A button with extended horizontal width
/// - [block]: A full-width button that spans its container
enum ButtonSize {
  /// A small button with reduced dimensions
  small('btn-sm'),

  /// A normal button with reduced dimensions
  normal(''),

  /// A large button with increased dimensions
  large('btn-lg'),

  /// A button with extended horizontal width
  wide('btn-wide'),

  /// A full-width button that occupies the entire container
  block('btn-block');

  /// Creates a const constructor with an associated CSS class name
  const ButtonSize(this.className);

  /// The CSS class name associated with this button size
  final String className;
}
