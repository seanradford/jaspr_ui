// ignore_for_file: unnecessary_string_interpolations

import 'package:jaspr/jaspr.dart';

/// A reusable tooltip component that displays additional information
/// when hovering over or interacting with child components.
///
/// [children] are the components to which the tooltip is attached.
/// [message] is the text displayed in the tooltip.
/// [isOpen] determines if the tooltip is initially visible.
/// [position] controls the tooltip's placement relative to the target.
/// [color] defines the tooltip's color scheme.
class Tooltip extends StatelessComponent {
  final List<Component> children;
  final String message;
  final bool isOpen;
  final TooltipPosition? position;
  final TooltipColor? color;

  Tooltip({
    super.key,
    required this.children,
    required this.message,
    this.isOpen = false,
    this.position,
    this.color,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'tooltip '
            '${isOpen ? 'tooltip-open' : ''} '
            '${color != null ? '${color!.className}' : ''} '
            '${position != null ? '${position!.className}' : ''} ',
        attributes: {'data-tip': '$message'},
        children);
  }
}

/// Defines possible positioning options for tooltips.
///
/// Allows specifying the tooltip's direction relative to the target component.
enum TooltipPosition {
  right('tooltip-right'),
  left('tooltip-left'),
  top('tooltip-top'),
  bottom('tooltip-bottom');

  const TooltipPosition(this._className);
  final String _className;

  /// Returns the CSS class name for the specified tooltip position.
  String get className => _className;
}

/// Defines color variations for tooltips.
///
/// Provides a range of predefined color schemes to style tooltips.
enum TooltipColor {
  primary('tooltip-primary'),
  secondary('tooltip-secondary'),
  accent('tooltip-accent'),
  neutral('tooltip-neutral'),
  info('tooltip-info'),
  success('tooltip-success'),
  warning('tooltip-warning'),
  error('tooltip-error');

  const TooltipColor(this._className);
  final String _className;

  /// Returns the CSS class name for the specified tooltip color.
  String get className => _className;
}
