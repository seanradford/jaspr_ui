// ignore_for_file: unnecessary_string_interpolations

import 'package:jaspr/jaspr.dart';

import '../../colors/text_colors.dart';

/// A component that renders a code mockup interface.
///
/// This component creates a container that mimics a code editor or terminal interface.
/// It accepts a list of [CodeMockupItem]s as children to display individual lines of code
/// or terminal output.
///
/// Example usage:
/// ```dart
/// CodeMockup(
///   children: [
///     CodeMockupItem(
///       prefix: '$',
///       title: 'npm install',
///       textColor: TextColor.success,
///     ),
///     CodeMockupItem(
///       prefix: '>',
///       title: 'installing dependencies...',
///     ),
///   ],
/// )
/// ```
class CodeMockup extends StatelessComponent {
  /// The list of code lines to display in the mockup.
  ///
  /// Each item represents a line of code or terminal output with its own
  /// prefix and styling options.
  final List<CodeMockupItem> children;

  /// Creates a new code mockup component.
  ///
  /// [children] is required and specifies the lines of code to display
  /// in the mockup interface.
  CodeMockup({super.key, required this.children});

  /// Builds the code mockup container with the specified children.
  ///
  /// Returns an [Iterable] containing a div with the 'mockup-code' class
  /// and the provided children.
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'mockup-code', children);
  }
}

/// A component that represents a single line in a code mockup.
///
/// Each item can have a prefix (like '$' or '>'), main text content,
/// and optional text coloring for visual emphasis.
///
/// Example usage:
/// ```dart
/// CodeMockupItem(
///   prefix: '$',
///   title: 'npm install',
///   textColor: TextColor.success,
/// )
/// ```
class CodeMockupItem extends StatelessComponent {
  /// The prefix character(s) to display before the main text.
  ///
  /// Commonly used to show command prompts (e.g., '$', '>', '#').
  final String prefix;

  /// The main text content to display in the code line.
  final String title;

  /// Optional color styling for the text.
  ///
  /// When specified, applies the corresponding color class from the UI framework.
  /// When null, uses the default text color.
  final TextColor? textColor;

  /// Creates a new code mockup line item.
  ///
  /// [prefix] is required and specifies the character(s) shown before the main text.
  /// [title] is required and contains the main text content.
  /// [textColor] is optional and can be used to apply color styling to the text.
  CodeMockupItem({
    required this.prefix,
    required this.title,
    this.textColor,
  });

  /// Builds the code line item with the specified prefix, title, and styling.
  ///
  /// Returns an [Iterable] containing a pre element with the appropriate
  /// classes, data attributes, and nested code element.
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield pre(
        classes: '${textColor != null ? '${textColor!.className}' : ''}',
        attributes: {
          'data-prefix': '$prefix'
        },
        [
          code([text(title)])
        ]);
  }
}
