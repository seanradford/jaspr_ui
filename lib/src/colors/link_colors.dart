/// Defines the available color variants for link styling
enum LinkColor {
  /// Primary brand color, used for main call-to-action buttons
  primary('link-primary'),

  /// Secondary brand color, used for alternative actions
  secondary('link-secondary'),

  /// Accent color for emphasis or highlight actions
  accent('link-accent'),

  /// Neutral/gray color for less prominent actions
  neutral('link-neutral'),

  /// Information blue color for informational actions
  info('link-info'),

  /// Success/green color for positive actions or confirmations
  success('link-success'),

  /// Warning/yellow color for cautionary actions
  warning('link-warning'),

  /// Error/red color for destructive or critical actions
  error('link-error');

  /// Creates a new LinkColor with the associated CSS class name.
  const LinkColor(this._className);

  /// The CSS class name associated with this link color.
  final String _className;

  /// Returns the CSS class name for the link color.
  ///
  /// This getter is used to generate the appropriate CSS class name
  /// for the link's color styling in the UI.
  String get className => _className;
}
