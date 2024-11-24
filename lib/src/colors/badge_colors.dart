/// Badge colors for styling components.
///
/// This enum provides a standardized set of colors for badge components in the application.
/// Each value corresponds to a specific CSS class that applies the respective color styling.
///
/// Example usage:
/// ```dart
/// final badge = BadgeColor.success;
/// print(badge.className); // Outputs: 'badge-success'
/// ```
enum BadgeColor {
  /// Primary badge color.
  ///
  /// Used for main or default badge styling.
  primary('badge-primary'),

  /// Secondary badge color.
  ///
  /// Used for alternative or complementary badge styling.
  secondary('badge-secondary'),

  /// Accent badge color.
  ///
  /// Used for emphasizing or highlighting badges.
  accent('badge-accent'),

  /// Neutral badge color.
  ///
  /// Used for badges that should have a neutral or subtle appearance.
  neutral('badge-neutral'),

  /// Info badge color.
  ///
  /// Used for informational or notice badges.
  info('badge-info'),

  /// Success badge color.
  ///
  /// Used for badges indicating successful operations or positive states.
  success('badge-success'),

  /// Warning badge color.
  ///
  /// Used for badges indicating warnings or cautionary states.
  warning('badge-warning'),

  /// Error badge color.
  ///
  /// Used for badges indicating errors or critical states.
  error('badge-error');

  /// Creates a [BadgeColor] with the specified CSS class name.
  const BadgeColor(this._className);

  /// The CSS class name associated with this badge color.
  final String _className;

  /// Returns the CSS class name for this badge color.
  ///
  /// This getter provides access to the private [_className] field
  /// that contains the actual CSS class name.
  String get className => _className;
}
