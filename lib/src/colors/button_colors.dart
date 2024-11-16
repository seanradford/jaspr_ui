// ignore_for_file: constant_identifier_names

enum ButtonColor {
  primary,
  primary_content,
  secondary,
  secondary_content,
  accent,
  accent_content,
  neutral,
  neutral_content,
  base_100,
  base_200,
  base_300,
  base_content,
  info,
  info_content,
  success,
  success_content,
  warning,
  warning_content,
  error,
  error_content;

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
      case ButtonColor.primary_content:
        return 'btn-primary-content';
      case ButtonColor.secondary_content:
        return 'btn-secondary-content';
      case ButtonColor.accent_content:
        return 'btn-accent-content';
      case ButtonColor.neutral_content:
        return 'btn-neutral-content';
      case ButtonColor.base_100:
        return 'btn-base-100';
      case ButtonColor.base_200:
        return 'btn-base-200';
      case ButtonColor.base_300:
        return 'btn-base-300';
      case ButtonColor.base_content:
        return 'btn-base-content';
      case ButtonColor.info_content:
        return 'btn-info-content';
      case ButtonColor.success_content:
        return 'btn-success-content';
      case ButtonColor.warning_content:
        return 'btn-warning-content';
      case ButtonColor.error_content:
        return 'btn-error-content';
    }
  }
}
