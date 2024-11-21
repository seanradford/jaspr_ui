import 'package:jaspr/jaspr.dart';

import '../../jaspr_ui.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

/// Represents a single accordion item with a title and content.
///
/// An [AccordionItem] can be customized with a specific style and background color.
/// It is typically used within an [Accordion] component.
class AccordionItem extends StatelessComponent {
  /// A unique identifier for the accordion item.
  final String id;

  /// The title displayed in the accordion header.
  final String title;

  /// The content displayed when the accordion item is expanded.
  final String content;

  /// Optional style for the accordion item (arrow or plus).
  final AccordionStyle? style;

  /// Optional background color for the accordion item.
  final BackgroundColor? backgroundColor;

  /// Creates an [AccordionItem] with required and optional parameters.
  ///
  /// [id] must be unique within the accordion.
  /// [title] and [content] are required.
  /// [style] and [backgroundColor] are optional.
  AccordionItem({
    super.key,
    required this.id,
    required this.title,
    required this.content,
    this.style,
    this.backgroundColor,
  });

  @override

  /// Builds the visual representation of the accordion item.
  ///
  /// Generates a collapsible div with a radio input, title, and content.
  /// Applies styling based on the provided [style] and [backgroundColor].
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'collapse '
            '${style != null ? '${style!.className} ' : ''}'
            '${backgroundColor != null ? '${backgroundColor!.className} ' : BackgroundColor.base200.className}',
        [
          //
          input(type: InputType.radio, name: id, []),
          div(classes: 'collapse-title text-xl font-medium', [text(title)]),
          div(classes: 'collapse-content', [text(content)]),
        ]);
  }
}

/// A container for multiple [AccordionItem] components.
///
/// Renders a list of accordion items that can be expanded and collapsed.
class Accordion extends StatelessComponent {
  /// A list of [AccordionItem] components to be rendered.
  final List<AccordionItem> children;

  /// Creates an [Accordion] with a list of child accordion items.
  Accordion(this.children);

  @override

  /// Builds the accordion by yielding each child accordion item.
  Iterable<Component> build(BuildContext context) sync* {
    for (var component in children) {
      yield component;
    }
  }
}

/// Defines the visual style of an accordion item.
///
/// Provides predefined styles for accordion interactions.
enum AccordionStyle {
  /// Displays an arrow icon for expanding/collapsing.
  arrow('collapse-arrow'),

  /// Displays a plus/minus icon for expanding/collapsing.
  plus('collapse-plus');

  /// Creates an [AccordionStyle] with an associated CSS class name.
  const AccordionStyle(this._className);

  /// The internal CSS class name for the style.
  final String _className;

  /// Returns the CSS class name associated with this accordion style.
  String get className => _className;
}
