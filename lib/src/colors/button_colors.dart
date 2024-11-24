/// Button colors for styling UI components
enum ButtonColor {
  primary('btn-primary'),
  secondary('btn-secondary'),
  accent('btn-accent'),
  neutral('btn-neutral'),
  base100('btn-base-100'),
  base200('btn-base-200'),
  base300('btn-base-300'),
  info('btn-info'),
  success('btn-success'),
  warning('btn-warning'),
  error('btn-error');

  const ButtonColor(this._className);

  final String _className;

  String get className => _className;
}
