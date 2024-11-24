import 'package:jaspr/jaspr.dart';

// ignore_for_file: unnecessary_string_interpolations

/// A responsive and customizable carousel component for displaying a series of images.
///
/// The [Carousel] allows configuration of width, rounded corners, and indicator visibility.
/// It generates a carousel with image items and optional navigation indicators.
///
/// Example usage:
/// ```dart
/// Carousel(
///   children: [
///     CarouselItem(imageUrl: 'path/to/image1.jpg'),
///     CarouselItem(imageUrl: 'path/to/image2.jpg'),
///   ],
///   widthFull: true,
///   roundedBox: true,
///   showIndicator: true,
/// )
/// ```
class Carousel extends StatelessComponent {
  /// List of [CarouselItem] to be displayed in the carousel.
  final List<CarouselItem> children;

  /// Determines if the carousel should take full width of its container.
  ///
  /// Defaults to `true`.
  final bool widthFull;

  /// Applies rounded corners to the carousel container.
  ///
  /// Defaults to `true`.
  final bool roundedBox;

  /// Controls the visibility of navigation indicators.
  ///
  /// Defaults to `true`.
  final bool showIndicator;

  /// Constructs a [Carousel] with the given configuration.
  ///
  /// [children] is a required parameter containing the carousel items.
  /// [widthFull], [roundedBox], and [showIndicator] are optional with default values.
  Carousel({
    required this.children,
    this.widthFull = true,
    this.roundedBox = true,
    this.showIndicator = true,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'carousel '
            '${roundedBox ? 'rounded-box ' : ''}'
            '${widthFull ? 'w-full ' : ''}',
        List.generate(children.length, (index) {
          final item = children[index];

          return div(
            id: 'item${(index + 1)}',
            classes: 'carousel-item '
                '${widthFull ? 'w-full' : ''}',
            [
              img(
                classes: widthFull ? 'w-full' : '',
                src: '${item.imageUrl}',
                alt: '${item.alt}',
              ),
            ],
          );
        }));

    yield div(
        classes: 'flex w-full justify-center gap-2 py-2',
        List.generate(children.length, (index) {
          return a(
              href: '#item${(index + 1)}',
              classes: 'btn btn-xs',
              [text('${(index + 1)}')]);
        }));
  }
}

/// Represents an individual item within a [Carousel].
///
/// Each [CarouselItem] contains an image URL, optional alternative text,
/// and width configuration.
class CarouselItem {
  /// The URL of the image to be displayed in the carousel.
  final String imageUrl;

  /// Alternative text for the image, used for accessibility.
  ///
  /// Defaults to an empty string.
  final String alt;

  /// Determines if the image should take full width of its container.
  ///
  /// Defaults to `true`.
  final bool widthFull;

  /// Constructs a [CarouselItem] with the given image configuration.
  ///
  /// [imageUrl] is a required parameter.
  /// [alt] and [widthFull] are optional with default values.
  CarouselItem({
    required this.imageUrl,
    this.alt = '',
    this.widthFull = true,
  });
}
