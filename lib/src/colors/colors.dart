/// Defines the available colors for button components.
/// 
/// These colors follow the DaisyUI color system and can be used to create
/// buttons with consistent theming across the application.
///
/// Usage example:
/// ```dart
/// Button(
///   title: 'Save',
///   color: DsColor.primary,
/// )
/// ```
enum DsColor {
  /// Primary brand color, used for main call-to-action buttons
  primary,

  /// Secondary brand color, used for alternative actions
  secondary,

  /// Accent color for emphasis or highlight actions
  accent,

  /// Neutral/gray color for less prominent actions
  neutral,

  /// Information blue color for informational actions
  info,

  /// Success/green color for positive actions or confirmations
  success,

  /// Warning/yellow color for cautionary actions
  warning,

  /// Error/red color for destructive or critical actions
  error;

  /// Returns the CSS class suffix for the color.
  /// 
  /// This getter is used internally to generate the appropriate CSS class name
  /// for the button's color styling.
  String get name => toString().split('.').last;
}