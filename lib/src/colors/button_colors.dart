
enum ButtonColor {
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

  /// Returns the CSS class name for the button color.
  /// 
  /// This getter is used internally to generate the appropriate CSS class name
  /// for the button's color styling.
  String get className {
    switch (this) {
      case ButtonColor.primary:
        return 'btn-primary';
      case ButtonColor.secondary:
        return 'btn-secondary';
      case ButtonColor.accent:
        return 'btn-accent';
      case ButtonColor.neutral:
        return 'btn-neutral';
      case ButtonColor.info:
        return 'btn-info';
      case ButtonColor.success:
        return 'btn-success';
      case ButtonColor.warning:
        return 'btn-warning';
      case ButtonColor.error:
        return 'btn-error';
    }
  }
}