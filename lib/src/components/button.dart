import 'package:jaspr/jaspr.dart';

import '../../jaspr_ui.dart';
import '../sizes/sizes.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

/// A collection of button components for building user interfaces with Jaspr.
/// These components provide different button styles while maintaining a consistent API.

/// A standard button component that renders a basic button with customizable styling.
///
/// Example usage:
/// ```dart
/// Button(
///   title: 'Submit',
///   color: ButtonColor.primary,
///   size: ButtonSize.large,
///   onPressed: () => handleSubmit(),
/// )
/// ```
class Button extends StatelessComponent {
  /// The text to display on the button
  final String title;

  /// Optional color theme for the button from [ButtonColor]
  final ButtonColor? color;

  /// The size of the button from [ButtonSize], defaults to [ButtonSize.normal]
  final ButtonSize size;

  /// Optional callback function triggered when the button is clicked
  final VoidCallback? onPressed;

  /// Optional map of additional HTML attributes to apply to the button element
  final Map<String, String>? attributes;

  /// Creates a new [Button] instance.
  ///
  /// The [title] parameter is required and specifies the button's text.
  /// All other parameters are optional.
  const Button({
    required this.title,
    this.color,
    this.size = ButtonSize.normal,
    this.onPressed,
    this.attributes,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: 'btn ${size.className}'
          '${color != null ? ' ${color!.className}' : ''}',
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
/// Example usage:
/// ```dart
/// OutLineButton(
///   title: 'Cancel',
///   color: ButtonColor.secondary,
///   onPressed: () => handleCancel(),
/// )
/// ```
class OutLineButton extends StatelessComponent {
  /// The text to display on the button
  final String title;

  /// Optional color theme for the button's outline from [ButtonColor]
  final ButtonColor? color;

  /// The size of the button from [ButtonSize], defaults to [ButtonSize.normal]
  final ButtonSize size;

  /// Optional callback function triggered when the button is clicked
  final VoidCallback? onPressed;

  /// Optional map of additional HTML attributes to apply to the button element
  final Map<String, String>? attributes;

  const OutLineButton({
    required this.title,
    this.color,
    this.size = ButtonSize.normal,
    this.onPressed,
    this.attributes,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: 'btn btn-outline ${size.className}'
          '${color != null ? ' ${color!.className}' : ''}',
      [
        text(title),
      ],
      onClick: () => onPressed?.call(),
      attributes: attributes,
    );
  }
}

class GlassButton extends StatelessComponent {
  /// The text to display on the button
  final String title;

  /// The size of the button from [ButtonSize], defaults to [ButtonSize.normal]
  final ButtonSize size;

  /// Optional callback function triggered when the button is clicked
  final VoidCallback? onPressed;

  /// Optional map of additional HTML attributes to apply to the button element
  final Map<String, String>? attributes;

  const GlassButton({
    required this.title,
    this.size = ButtonSize.normal,
    this.onPressed,
    this.attributes,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: "btn glass ${size.className}",
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
/// This button variant spans the full width of its container,
/// making it ideal for mobile interfaces or prominent calls-to-action.
///
/// Example usage:
/// ```dart
/// BlockButton(
///   title: 'Full Width Action',
///   onPressed: () => handleAction(),
/// )
/// ```
class BlockButton extends StatelessComponent {
  /// The text to display on the button
  final String title;

  /// The size of the button from [ButtonSize], defaults to [ButtonSize.normal]
  final ButtonSize size;

  /// Optional callback function triggered when the button is clicked
  final VoidCallback? onPressed;

  /// Optional map of additional HTML attributes to apply to the button element
  final Map<String, String>? attributes;

  /// Creates a new [BlockButton] instance.
  ///
  /// The [title] parameter is required and specifies the button's text.
  /// All other parameters are optional.
  const BlockButton({
    required this.title,
    this.size = ButtonSize.normal,
    this.onPressed,
    this.attributes,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: "btn btn-block ${size.className}",
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
/// This button variant combines an icon with text, using Font Awesome icons
/// for consistent and scalable icon rendering.
///
/// Example usage:
/// ```dart
/// IconButton(
///   title: 'Settings',
///   icon: 'cog',
///   onPressed: () => openSettings(),
/// )
/// ```
class IconButton extends StatelessComponent {
  /// The text to display on the button
  final String title;

  /// The size of the button from [ButtonSize], defaults to [ButtonSize.normal]
  final ButtonSize size;

  /// Optional callback function triggered when the button is clicked
  final VoidCallback? onPressed;

  /// Optional map of additional HTML attributes to apply to the button element
  final Map<String, String>? attributes;

  /// The name of the Font Awesome icon to display (without the 'fa-' prefix)
  final String icon;

  const IconButton({
    required this.title,
    this.size = ButtonSize.normal,
    this.onPressed,
    this.attributes,
    required this.icon,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: "btn ${size.className}",
      [
        span(classes: 'icon', [i(classes: 'far fa-$icon', [])]),
        text(title),
      ],
      onClick: () => onPressed?.call(),
      attributes: attributes,
    );
  }
}
