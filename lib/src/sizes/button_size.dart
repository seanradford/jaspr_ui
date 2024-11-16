/// An enum representing different button sizes.
///
/// Each button size has a corresponding CSS class name that can be used to style the button.
enum ButtonSize {
  /// A small-sized button.
  small,

  /// A normal-sized button (default).
  normal,

  /// A large-sized button.
  large,

  /// A wide button that spans multiple columns.
  wide,

  /// A block-level button that spans the full width of its parent.
  block;

  /// Returns the CSS class name associated with the button size.
  String get className {
    switch (this) {
      case ButtonSize.small:
        return 'btn-sm';
      case ButtonSize.normal:
        return '';
      case ButtonSize.large:
        return 'btn-lg';
      case ButtonSize.wide:
        return 'btn-wide';
      case ButtonSize.block:
        return 'btn-block';
    }
  }
}