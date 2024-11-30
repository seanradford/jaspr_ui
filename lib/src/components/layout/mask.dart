// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jaspr/jaspr.dart';

/// A stateless component that renders an image with optional shape masking.
///
/// The [Mask] class allows rendering an image with predefined shape masks,
/// providing flexibility in image presentation through various geometric shapes.
///
/// {@tool snippet}
/// Example usage:
/// ```dart
/// Mask(
///   imageUrl: 'https://example.com/image.jpg',
///   shape: MaskShape.circle
/// )
/// ```
/// {@end-tool}
///
/// See also:
/// - [MaskShape] for available mask shape options
class Mask extends StatelessComponent {
  /// The URL of the image to be displayed.
  final String imageUrl;

  /// The shape of the mask to be applied to the image.
  ///
  /// If null, no specific shape mask will be applied.
  final MaskShape? shape;

  /// Constructs a [Mask] component.
  ///
  /// [imageUrl] is required and specifies the source of the image.
  /// [shape] is optional and determines the mask shape applied to the image.
  Mask({
    required this.imageUrl,
    this.shape,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield img(classes: 'mask ${shape?.className ?? ''}', src: imageUrl);
  }
}

/// Enumeration of available mask shapes for image masking.
///
/// Each [MaskShape] corresponds to a specific CSS class that applies
/// a unique geometric shape to an image.
///
/// The shapes range from simple geometric forms like circle and square
/// to more complex shapes like star, triangle, and parallelogram variants.
enum MaskShape {
  /// Squircle (square-circle hybrid) mask shape
  squircle('mask-squircle'),

  /// Heart-shaped mask
  heart('mask-heart'),

  /// Hexagon mask shape
  hexagon('mask-hexagon'),

  /// Alternative hexagon mask shape
  hexagon2('mask-hexagon-2'),

  /// Decagon (10-sided polygon) mask shape
  decagon('mask-decagon'),

  /// Pentagon (5-sided polygon) mask shape
  pentagon('mask-pentagon'),

  /// Diamond-shaped mask
  diamond('mask-diamond'),

  /// Square-shaped mask
  square('mask-square'),

  /// Circular mask shape
  circle('mask-circle'),

  /// Parallelogram mask shape
  parallelogram('mask-parallelogram'),

  /// Alternative parallelogram mask shape
  parallelogram2('mask-parallelogram-2'),

  /// Third variant of parallelogram mask
  parallelogram3('mask-parallelogram-3'),

  /// Fourth variant of parallelogram mask
  parallelogram4('mask-parallelogram-4'),

  /// Star-shaped mask
  star('mask-star'),

  /// Alternative star-shaped mask
  star2('mask-star-2'),

  /// Triangle mask shape
  triangle('mask-triangle'),

  /// Alternative triangle mask shape
  triangle2('mask-triangle-2'),

  /// Third variant of triangle mask
  triangle3('mask-triangle-3'),

  /// Fourth variant of triangle mask
  triangle4('mask-triangle-4'),

  /// First half-shaped mask
  half1('mask-half-1'),

  /// Second half-shaped mask
  half2('mask-half-2');

  /// Private constructor that maps each enum value to its corresponding CSS class name
  const MaskShape(this._className);

  /// The underlying CSS class name for the mask shape
  final String _className;

  /// Getter to retrieve the CSS class name for the mask shape
  String get className => _className;
}
