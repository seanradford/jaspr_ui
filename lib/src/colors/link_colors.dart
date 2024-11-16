enum LinkColor {
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
      case LinkColor.primary:
        return 'link-primary';
      case LinkColor.secondary:
        return 'link-secondary';
      case LinkColor.accent:
        return 'link-accent';
      case LinkColor.neutral:
        return 'link-neutral';
      case LinkColor.info:
        return 'link-info';
      case LinkColor.success:
        return 'link-success';
      case LinkColor.warning:
        return 'link-warning';
      case LinkColor.error:
        return 'link-error';
    }
  }
}
