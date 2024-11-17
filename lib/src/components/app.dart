import 'package:jaspr/jaspr.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

/// A component that wraps content with DaisyUI theming capabilities.
///
/// This component provides a way to apply DaisyUI themes to a collection of child
/// components. It creates a document structure with the specified theme and wraps
/// the children in a div with the 'main' class.
///
/// Example usage:
/// ```dart
/// class App extends StatelessComponent {
///   const App({super.key});
///   @override
///   Iterable<Component> build(BuildContext context) sync* {
///     yield DaisyUI(theme: 'dark', [
///       Router(routes: [
///         Route(
///           path: '/',
///           title: 'Home',
///           builder: (context, state) => const Home(),
///         )
///       ])
///     ]);
///   }
/// }
/// ```
class DaisyUI extends StatelessComponent {
  /// The child components to be rendered within the DaisyUI wrapper.
  final List<Component> children;

  /// The DaisyUI theme to be applied.
  ///
  /// This value will be set as the 'data-theme' attribute on the document.
  /// Common values include 'light', 'dark', 'cupcake', etc.
  final String theme;

  /// Creates a new DaisyUI component.
  ///
  /// [children] is a list of components to be rendered within the DaisyUI wrapper.
  /// [theme] is required and specifies the DaisyUI theme to be applied.
  DaisyUI(
    this.children, {
    required this.theme,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Document.html(
      attributes: {"data-theme": theme},
    );
    yield div(
      classes: 'main',
      children,
    );
  }
}
