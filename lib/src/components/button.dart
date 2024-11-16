// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jaspr/jaspr.dart';

import '../../jaspr_ui.dart';

/// A collection of button components for building user interfaces with Jaspr.
/// These components provide different button styles while maintaining a consistent API.

/// A standard button component that renders a basic button with customizable styling.
///
/// The [Button] component creates a standard button with optional color styling.
///
/// Example usage:
/// ```dart
/// Button(
///   title: 'Click me',
///   color: DsColor.primary,
///   onPressed: () => print('Button pressed'),
/// )
/// ```
///
/// Parameters:
/// * [title] - The text to display on the button
/// * [color] - Optional [DsColor] to specify the button's color theme
/// * [onPressed] - Optional callback function triggered when the button is clicked
/// * [attributes] - Optional map of HTML attributes to apply to the button element
class Button extends StatelessComponent {
  final String title;
  final DsColor? color;
  final VoidCallback? onPressed;
  final Map<String, String>? attributes;

  const Button({
    required this.title,
    this.color,
    this.onPressed,
    this.attributes,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: 'btn '
          '${color != null ? ' btn-${color!.name}' : ''}',
      [
        text(title),
      ],
      onClick: () => onPressed?.call(),
      attributes: attributes,
    );
  }
}

/// An outline-styled button component with a transparent background.
///
/// The [OutLineButton] component creates a button with an outline style,
/// where the border is colored but the background remains transparent.
///
/// Example usage:
/// ```dart
/// OutLineButton(
///   title: 'Outline Button',
///   color: DsColor.secondary,
///   onPressed: () => print('Outline button pressed'),
/// )
/// ```
///
/// Parameters:
/// * [title] - The text to display on the button
/// * [color] - Optional [DsColor] to specify the button's outline color
/// * [onPressed] - Optional callback function triggered when the button is clicked
/// * [attributes] - Optional map of HTML attributes to apply to the button element
class OutLineButton extends StatelessComponent {
  final String title;
  final DsColor? color;
  final VoidCallback? onPressed;
  final Map<String, String>? attributes;

  const OutLineButton({
    required this.title,
    this.color,
    this.onPressed,
    this.attributes,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: 'btn btn-outline '
          '${color != null ? ' btn-${color!.name}' : ''}',
      [
        text(title),
      ],
      onClick: () => onPressed?.call(),
      attributes: attributes,
    );
  }
}

/// A button component with a glass-morphism effect.
///
/// The [GlassButton] component creates a button with a translucent, glass-like
/// appearance that follows the glass-morphism design trend.
///
/// Example usage:
/// ```dart
/// GlassButton(
///   title: 'Glass Effect',
///   onPressed: () => print('Glass button pressed'),
/// )
/// ```
///
/// Parameters:
/// * [title] - The text to display on the button
/// * [onPressed] - Optional callback function triggered when the button is clicked
/// * [attributes] - Optional map of HTML attributes to apply to the button element
class GlassButton extends StatelessComponent {
  final String title;
  final VoidCallback? onPressed;
  final Map<String, String>? attributes;

  const GlassButton({
    required this.title,
    this.onPressed,
    this.attributes,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: "btn glass",
      [
        text(title),
      ],
      onClick: () => onPressed?.call(),
      attributes: attributes,
    );
  }
}

/// A full-width block button component.
///
/// The [BlockButton] component creates a button that spans the full width of its
/// container, useful for creating prominent call-to-action buttons.
///
/// Example usage:
/// ```dart
/// BlockButton(
///   title: 'Full Width Button',
///   onPressed: () => print('Block button pressed'),
/// )
/// ```
///
/// Parameters:
/// * [title] - The text to display on the button
/// * [onPressed] - Optional callback function triggered when the button is clicked
/// * [attributes] - Optional map of HTML attributes to apply to the button element
class BlockButton extends StatelessComponent {
  final String title;
  final VoidCallback? onPressed;
  final Map<String, String>? attributes;

  const BlockButton({
    required this.title,
    this.onPressed,
    this.attributes,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: "btn btn-block",
      [
        text(title),
      ],
      onClick: () => onPressed?.call(),
      attributes: attributes,
    );
  }
}

/// A button component that includes an icon alongside text.
///
/// The [IconButton] component creates a button with a Font Awesome icon
/// displayed before the button text.
///
/// Example usage:
/// ```dart
/// IconButton(
///   title: 'Settings',
///   icon: 'cog',
///   onPressed: () => print('Icon button pressed'),
/// )
/// ```
///
/// Parameters:
/// * [title] - The text to display on the button
/// * [icon] - The Font Awesome icon name (without the 'fa-' prefix)
/// * [onPressed] - Optional callback function triggered when the button is clicked
/// * [attributes] - Optional map of HTML attributes to apply to the button element
class IconButton extends StatelessComponent {
  final String title;
  final VoidCallback? onPressed;
  final Map<String, String>? attributes;
  final String icon;

  const IconButton({
    required this.title,
    this.onPressed,
    this.attributes,
    required this.icon,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: "btn",
      [
        span(classes: 'icon', [i(classes: 'fas fa-$icon', [])]),
        text(title),
      ],
      onClick: () => onPressed?.call(),
      attributes: attributes,
    );
  }
}
