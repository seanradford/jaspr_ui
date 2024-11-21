/// Badge colors for styling components
enum BadgeColor {
  primary('badge-primary'),
  secondary('badge-secondary'),
  accent('badge-accent'),
  neutral('badge-neutral'),
  info('badge-info'),
  success('badge-success'),
  warning('badge-warning'),
  error('badge-error');

  const BadgeColor(this._className);

  final String _className;

  String get className => _className;
}
