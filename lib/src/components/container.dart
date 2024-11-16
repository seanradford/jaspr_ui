// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jaspr/jaspr.dart';

import 'package:jaspr_ui/src/sizes/sizes.dart';

/// A Container component that wraps child components with customizable padding.
///
/// This component creates a div element with specified padding and contains
/// multiple child components. It uses the jaspr framework for web development.
///
/// Example usage:
/// ```dart
/// Container([
///   Text('Hello'),
///   Button('Click me'),
/// ], padding: PaddingSize.p_4)
/// ```
class Container extends StatelessComponent {
  /// List of child components to be rendered inside the container.
  final List<Component> children;

  /// The padding size to be applied to the container.
  ///
  /// Defaults to [PaddingSize.p_4] if not specified.
  /// Use different [PaddingSize] values to adjust the spacing around the content.
  final PaddingSize? padding;

  /// Creates a new [Container] instance.
  ///
  /// [children] is a required list of components to be rendered inside the container.
  /// [padding] is optional and defaults to [PaddingSize.p_4].
  Container(this.children, {this.padding = PaddingSize.p_4});

  /// Builds the container component with the specified padding and children.
  ///
  /// Returns an [Iterable] of components representing the container structure.
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: "container ${padding!.className}", children);
  }
}
