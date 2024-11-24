import 'package:jaspr/jaspr.dart';

/// A component that renders a browser mockup UI with a toolbar and content area.
///
/// The browser mockup includes:
/// * A toolbar with a URL input field
/// * A content area that can contain any child components
///
/// Example usage:
/// ```dart
/// BrowserMockup(
///   url: 'https://example.com',
///   children: [
///     text('Browser content here'),
///   ],
/// )
/// ```
class BrowserMockup extends StatelessComponent {
  /// The child components to be displayed in the browser mockup's content area.
  final List<Component> children;

  /// The URL to display in the browser's address bar.
  ///
  /// Defaults to 'https://daisyui.com' if not specified.
  final String url;

  /// Creates a new browser mockup component.
  ///
  /// [children] is required and specifies the content to display in the browser window.
  /// [url] is optional and defaults to 'https://daisyui.com'.
  BrowserMockup({
    super.key,
    required this.children,
    this.url = 'https://daisyui.com',
  });

  /// Builds the browser mockup UI structure.
  ///
  /// Returns an [Iterable] of components that make up the browser mockup,
  /// including the toolbar with URL input and the content area.
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'mockup-browser border-base-300 border',
      [
        div(
          classes: 'mockup-browser-toolbar',
          [
            div(classes: 'input border-base-300 border', [text(url)])
          ],
        ),
        div(children)
      ],
    );
  }
}
