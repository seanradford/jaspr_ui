import 'package:jaspr/jaspr.dart';

import '../../colors/background_colors.dart';

/// A collapsible component that can be expanded or collapsed
///
/// This stateless component creates a collapsible section with a title and content.
/// It supports custom styling and background colors.
class Collapse extends StatelessComponent {
  /// The title displayed on the collapsible header
  final String title;

  /// The content to be shown when the collapse is expanded
  final String content;

  /// Optional background color for the collapse component
  final BackgroundColor? backgroundColor;

  /// Optional style for the collapse (arrow or plus)
  final CollapseStyle? style;

  /// Unique index for accessibility and tab navigation
  final int index;

  /// Constructor for Collapse component
  ///
  /// [index] must be a unique identifier for the component
  /// [title] is the text displayed on the collapse header
  /// [content] is the text shown when expanded
  /// [backgroundColor] determines the background color of the component
  /// [style] defines the visual style of the collapse (arrow or plus)
  Collapse(
      {super.key,
      required this.index,
      required this.title,
      required this.content,
      required this.backgroundColor,
      required this.style});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'collapse '
            '${style != null ? '${style!.className} ' : ''}'
            '${backgroundColor != null ? '${backgroundColor!.className} ' : BackgroundColor.base200.className}',
        attributes: {
          'tabindex': '$index'
        },
        [
          div(
            classes: 'collapse-title text-xl font-medium',
            [text(title)],
          ),
          div(classes: 'collapse-content', [
            p([text(content)])
          ])
        ]);
  }
}

/// Enumeration of collapse styles
///
/// Provides two different visual styles for the collapse component
enum CollapseStyle {
  /// Collapse style with an arrow indicator
  arrow('collapse-arrow'),

  /// Collapse style with a plus/minus indicator
  plus('collapse-plus');

  /// Private constructor for the style
  const CollapseStyle(this._className);

  /// Internal class name for the style
  final String _className;

  /// Getter to retrieve the CSS class name for the style
  String get className => _className;
}
