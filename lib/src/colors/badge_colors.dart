enum BadgeColor {
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
      case BadgeColor.primary:
        return 'badge-primary';
      case BadgeColor.secondary:
        return 'badge-secondary';
      case BadgeColor.accent:
        return 'badge-accent';
      case BadgeColor.neutral:
        return 'badge-neutral';
      case BadgeColor.info:
        return 'badge-info';
      case BadgeColor.success:
        return 'badge-success';
      case BadgeColor.warning:
        return 'badge-warning';
      case BadgeColor.error:
        return 'badge-error';
    }
  }
}
