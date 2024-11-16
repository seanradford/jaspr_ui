// ignore_for_file: constant_identifier_names

enum BadgeColor {
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
      case BadgeColor.primary_content:
        return 'badge-primary-content';
      case BadgeColor.secondary_content:
        return 'badge-secondary-content';
      case BadgeColor.accent_content:
        return 'badge-accent-content';
      case BadgeColor.neutral_content:
        return 'badge-neutral-content';
      case BadgeColor.base_100:
        return 'badge-base-100';
      case BadgeColor.base_200:
        return 'badge-base-200';
      case BadgeColor.base_300:
        return 'badge-base-300';
      case BadgeColor.base_content:
        return 'badge-base-content';
      case BadgeColor.info_content:
        return 'badge-info-content';
      case BadgeColor.success_content:
        return 'badge-success-content';
      case BadgeColor.warning_content:
        return 'badge-warning-content';
      case BadgeColor.error_content:
        return 'badge-error-content';
    }
  }
}
