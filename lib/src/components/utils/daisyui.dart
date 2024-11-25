import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

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
///     yield DaisyUI(
///       theme: 'dark',
///       routes: [
///         Route(
///           path: '/',
///           title: 'Home',
///           builder: (context, state) => const Home(),
///         )
///       ],
///     );
///   }
/// }
/// ```
class DaisyUI extends StatelessComponent {
  /// The DaisyUI theme to be applied.
  ///
  /// This value will be set as the 'data-theme' attribute on the document.
  /// Common values include 'light', 'dark', 'cupcake', etc.
  final String theme;
  final List<Route> routes;

  DaisyUI({super.key, required this.theme, required this.routes});

  /// Creates a new DaisyUI component.
  ///
  /// [routes] is a list of route.
  /// [theme] is required and specifies the DaisyUI theme to be applied.

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Document.html(
      attributes: {"data-theme": theme},
    );
    yield Router(routes: routes);
  }
}
