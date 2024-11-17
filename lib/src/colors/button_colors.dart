/// Button colors
enum ButtonColor {
  primary,
  secondary,
  accent,
  neutral,
  base_100,
  base_200,
  base_300,
  info,
  success,
  warning,
  error;

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
      case ButtonColor.base_100:
        return 'btn-base-100';
      case ButtonColor.base_200:
        return 'btn-base-200';
      case ButtonColor.base_300:
        return 'btn-base-300';
    }
  }
}
