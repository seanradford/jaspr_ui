import 'package:jaspr/jaspr.dart';

/// A component that renders a phone device mockup interface.
///
/// This component creates a container that simulates a mobile phone device,
/// complete with a camera cutout and a display area that can contain any
/// child components. It's useful for showcasing mobile UI designs or
/// responsive layouts in a realistic device frame.
///
/// Example usage:
/// ```dart
/// PhoneMockup(
///   children: [
///     div(classes: 'p-4', [
///       text('Mobile app content here'),
///     ]),
///   ],
/// )
/// ```
class PhoneMockup extends StatelessComponent {
  /// The child components to be displayed in the phone's screen area.
  ///
  /// These components will be rendered within the phone's display area,
  /// which is styled to match typical mobile device dimensions and appearance.
  final List<Component> children;

  /// Creates a new phone mockup component.
  ///
  /// [children] is required and specifies the content to be displayed
  /// within the phone's screen area. This can include any valid components
  /// that represent your mobile UI.
  PhoneMockup({super.key, required this.children});

  /// Builds the phone mockup UI structure.
  ///
  /// Returns an [Iterable] of components that make up the phone mockup,
  /// including:
  /// * An outer container with the phone device frame
  /// * A camera cutout element at the top
  /// * A display area containing the provided child components
  /// * An artboard container for proper scaling and positioning of content
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'mockup-phone',
      [
        div(classes: 'camera', []), // Camera cutout element
        div(
          classes: 'display',
          [
            div(classes: 'artboard artboard-demo phone-1', children),
          ],
        ),
      ],
    );
  }
}
