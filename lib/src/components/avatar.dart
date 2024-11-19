import 'package:jaspr/jaspr.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

/// A component that displays a circular avatar image.
///
/// The [Avatar] component creates a circular container with an image inside it.
/// It uses CSS classes for styling, including a fixed width and rounded borders.
///
/// Example usage:
/// ```dart
/// Avatar(url: 'https://example.com/avatar.jpg')
/// ```
///
/// Parameters:
///   * [url] - The URL of the image to be displayed as the avatar.
///             This should be a valid image URL that can be loaded by the browser.
class Avatar extends StatelessComponent {
  /// The URL of the avatar image.
  ///
  /// This URL should point to a valid image resource that will be displayed
  /// within the circular avatar container.
  final String url;
  final int size;
  final Mask? mask;
  final Rounded rounded;

  /// Creates an [Avatar] component.
  ///
  /// Requires a [url] parameter which specifies the image source.
  const Avatar({
    required this.url,
    this.size = 24,
    this.mask,
    this.rounded = Rounded.full,
  });

  @override

  /// Builds the avatar component structure.
  ///
  /// Returns an iterable of components that create a nested div structure:
  /// - Outer div with 'avatar' class
  /// - Inner div with 'w-24 rounded-full' classes
  /// - Image element with the provided [url]
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: "avatar", [
      div(
        classes: 'w-$size '
            '${rounded.className} '
            '${mask != null ? ' ${mask!.className}' : ''} ',
        [
          img(src: url),
        ],
      ),
    ]);
  }
}

class AvatarGroup extends StatelessComponent {
  final List<Avatar> children;

  AvatarGroup({super.key, required this.children});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'avatar-group -space-x-6 rtl:space-x-reverse', children);
  }
  //
}

enum Rounded {
  full('rounded-full'),
  xl('rounded-xl'),
  rounded('rounded');

  const Rounded(this.className);
  final String className;
}

enum Mask {
  squircle('mask mask-squircle'),
  hexagon('mask mask-hexagon'),
  triangle('mask mask-triangle');

  const Mask(this.className);
  final String className;
}
