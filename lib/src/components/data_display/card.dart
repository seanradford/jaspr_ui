import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/src/sizes/shadow.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

/// A basic card component that wraps content in a styled container.
///
/// This component creates a card with a shadow and margin, containing the provided
/// content in its body. It uses Tailwind CSS classes for styling.
///
/// Example usage:
/// ```dart
/// Card(
///   children: Text('Hello World'),
/// )
/// ```
///
/// The card will be rendered with:
/// - Fixed width of 80 units (w-80)
/// - Margin of 4 units (m-4)
/// - Shadow effect
class Card extends StatelessComponent {
  /// The content to be displayed inside the card body.
  ///
  /// This can be any valid Component that will be rendered within the card's
  /// body section.
  final List<Component> children;
  final ShadowSize shadowSize;

  /// Creates a new [Card] instance.
  ///
  /// Requires [children] to be provided, which will be displayed inside the card body.
  Card({
    super.key,
    required this.children,
    this.shadowSize = ShadowSize.xl,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'card'
            '${shadowSize.className}',
        [
          div(classes: 'card-body', children),
        ]);
  }
}

/// A card component that displays an image, title, and content in a figure layout.
///
/// This component extends the basic card functionality by adding:
/// - An image at the top
/// - A title below the image
/// - Content text below the title
///
/// The card uses Tailwind CSS classes for styling and maintains the same width
/// and shadow properties as the basic [Card] component.
///
/// Example usage:
/// ```dart
/// CardFigure(
///   title: 'Mountain View',
///   content: 'A beautiful mountain landscape',
///   imageUrl: '/images/mountain.jpg',
/// )
/// ```
class CardFigure extends StatelessComponent {
  /// The title text displayed below the image.
  final String title;

  /// The main content text displayed below the title.
  final String content;

  /// The URL of the image to be displayed at the top of the card.
  final String imageUrl;

  /// Creates a new [CardFigure] instance.
  ///
  /// All parameters are required:
  /// - [title]: The heading text for the card
  /// - [content]: The main body text content
  /// - [imageUrl]: The URL for the image to be displayed
  CardFigure({
    required this.title,
    required this.content,
    required this.imageUrl,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([
      DomComponent(
        tag: 'figure',
        children: [img(src: imageUrl)],
      ),
      div(classes: 'card-body', [
        h2(classes: 'card-title', [text(title)]),
        p([text(content)])
      ]),
    ]);
  }
}
