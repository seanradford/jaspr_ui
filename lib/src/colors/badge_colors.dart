// ignore_for_file: constant_identifier_names
enum BadgeColor {
  primary,
  secondary,
  accent,
  neutral,
  info,
  success,
  warning,
  error;

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
