// ignore_for_file: unnecessary_string_interpolations

import 'package:jaspr/jaspr.dart';
import '../../../jaspr_ui.dart';

/// A standard button component with multiple configuration options.
///
/// [Button] provides a versatile button with customizable color, size,
/// and additional styling options like ghost and circle variants.
///
/// Example usage:
/// ```dart
/// Button(
///   title: 'Click me',
///   color: ButtonColor.primary,
///   size: ButtonSize.md,
///   onPressed: () => print('Button clicked')
/// )
/// ```
class Button extends StatelessComponent {
  /// The text displayed on the button.
  final String title;

  /// Optional color theme for the button.
  final ButtonColor? color;

  /// Optional size configuration for the button.
  final ButtonSize? size;

  /// Callback function triggered when the button is pressed.
  final VoidCallback? onPressed;

  /// Optional additional HTML attributes to be applied to the button.
  final Map<String, String>? attributes;

  /// Determines if the button should have a ghost (transparent) style.
  final bool? isGhost;

  /// Determines if the button should be rendered as a circular shape.
  final bool? isCircle;

  /// Creates a [Button] with the specified properties.
  ///
  /// [title] is the required text displayed on the button.
  /// [color] sets the button's color theme.
  /// [size] configures the button's size.
  /// [onPressed] defines the action when the button is clicked.
  const Button({
    required this.title,
    this.color,
    this.size,
    this.onPressed,
    this.attributes,
    this.isGhost = false,
    this.isCircle = false,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: 'btn '
          '${isGhost == true ? 'btn-ghost ' : ''}'
          '${isCircle == true ? 'btn-circle ' : ''}'
          '${size != null ? ' ${size!.className} ' : ''}'
          '${color != null ? ' ${color!.className} ' : ''}',
      [
        text(title),
      ],
      onClick: () => onPressed?.call(),
      attributes: attributes,
    );
  }
}

/// A button variant with an outline style.
///
/// [OutLineButton] provides a button with an outline appearance,
/// similar to the standard [Button] but with an additional outline class.
///
/// Example usage:
/// ```dart
/// OutLineButton(
///   title: 'Outline Button',
///   color: ButtonColor.secondary,
///   isCircle: true
/// )
/// ```
class OutLineButton extends StatelessComponent {
  /// The text displayed on the button.
  final String title;

  /// Optional color theme for the button.
  final ButtonColor? color;

  /// Optional size configuration for the button.
  final ButtonSize? size;

  /// Callback function triggered when the button is pressed.
  final VoidCallback? onPressed;

  /// Optional additional HTML attributes to be applied to the button.
  final Map<String, String>? attributes;

  /// Determines if the button should have a ghost (transparent) style.
  final bool? isGhost;

  /// Determines if the button should be rendered as a circular shape.
  final bool? isCircle;

  /// Creates an [OutLineButton] with the specified properties.
  const OutLineButton({
    required this.title,
    this.color,
    this.size,
    this.onPressed,
    this.attributes,
    this.isGhost = false,
    this.isCircle = false,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: 'btn btn-outline '
          '${isGhost == true ? 'btn-ghost ' : ''}'
          '${isCircle == true ? 'btn-circle ' : ''}'
          '${size != null ? ' ${size!.className} ' : ''}'
          '${color != null ? ' ${color!.className} ' : ''}',
      [
        text(title),
      ],
      onClick: () => onPressed?.call(),
      attributes: attributes,
    );
  }
}

/// A button with a glass (translucent) appearance.
///
/// [GlassButton] provides a button with a translucent, glass-like styling.
///
/// Example usage:
/// ```dart
/// GlassButton(
///   title: 'Glass Button',
///   size: ButtonSize.md,
///   isCircle: true
/// )
/// ```
class GlassButton extends StatelessComponent {
  /// The text displayed on the button.
  final String title;

  /// Optional size configuration for the button.
  final ButtonSize? size;

  /// Callback function triggered when the button is pressed.
  final VoidCallback? onPressed;

  /// Optional additional HTML attributes to be applied to the button.
  final Map<String, String>? attributes;

  /// Determines if the button should have a ghost (transparent) style.
  final bool? isGhost;

  /// Determines if the button should be rendered as a circular shape.
  final bool? isCircle;

  /// Creates a [GlassButton] with the specified properties.
  const GlassButton({
    required this.title,
    this.size,
    this.onPressed,
    this.attributes,
    this.isGhost = false,
    this.isCircle = false,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: "btn glass "
          '${isGhost == true ? 'btn-ghost ' : ''}'
          '${isCircle == true ? 'btn-circle ' : ''}'
          '${size != null ? ' ${size!.className} ' : ''}',
      [
        text(title),
      ],
      onClick: () => onPressed?.call(),
      attributes: attributes,
    );
  }
}

/// A button that includes an icon alongside text or as its primary content.
///
/// [IconButton] allows creating buttons with an integrated icon.
///
/// Example usage:
/// ```dart
/// IconButton(
///   title: 'Edit',
///   icon: 'edit-icon',
///   size: ButtonSize.small,
///   onPressed: () => print('Edit clicked')
/// )
/// ```
class IconButton extends StatelessComponent {
  /// The text displayed on the button (for accessibility).
  final String title;

  /// Optional size configuration for the button.
  final ButtonSize? size;

  /// Callback function triggered when the button is pressed.
  final VoidCallback? onPressed;

  /// Optional additional HTML attributes to be applied to the button.
  final Map<String, String>? attributes;

  /// The icon to be displayed on the button.
  final String icon;

  /// Determines if the button should have a ghost (transparent) style.
  final bool? isGhost;

  /// Determines if the button should be rendered as a circular shape.
  final bool? isCircle;

  /// Creates an [IconButton] with the specified properties.
  ///
  /// [title] provides text for accessibility.
  /// [icon] is the icon class or identifier to be displayed.
  const IconButton({
    required this.title,
    this.size,
    this.onPressed,
    this.attributes,
    required this.icon,
    this.isGhost = false,
    this.isCircle = false,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: 'btn '
          '${isGhost == true ? 'btn-ghost ' : ''}'
          '${isCircle == true ? 'btn-circle ' : ''}'
          '${size != null ? ' ${size!.className} ' : ''}',
      [
        span(classes: 'icon', [i(classes: '$icon', [])]),
      ],
      onClick: () => onPressed?.call(),
      attributes: attributes,
    );
  }
}
