import 'package:jaspr/jaspr.dart';

/// A component that displays a chat message bubble with optional avatar.
///
/// The bubble can be aligned to either the start (left) or end (right) of its container.
/// It supports displaying a message with an optional avatar image.
///
/// Parameters:
/// - [start] - Controls the alignment of the bubble. True for left alignment, false for right.
/// - [message] - The text content to display inside the bubble.
/// - [avatarUrl] - Optional URL for the sender's avatar image.
///
/// Example usage:
/// ```dart
/// ChatBubble(
///   start: true,
///   message: "Hello!",
///   avatarUrl: "https://example.com/avatar.png",
/// )
/// ```
class ChatBubble extends StatelessComponent {
  /// Whether to align the bubble to the start (left) of the container.
  final bool start;

  /// The message text to display in the bubble.
  final String message;

  /// Optional URL for the avatar image.
  /// If null, no avatar will be displayed.
  final String? avatarUrl;

  /// Creates a chat bubble component.
  ///
  /// The [start] and [message] parameters are required.
  /// The [avatarUrl] parameter is optional.
  ChatBubble({
    super.key,
    required this.start,
    required this.message,
    this.avatarUrl,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'chat m-4 '
            '${(start) ? 'chat-start' : 'chat-end'}',
        [
          if (avatarUrl != null)
            div(
              classes: 'avatar chat-image',
              [
                div(classes: 'w-10 rounded-full', [
                  img(src: avatarUrl!),
                ]),
              ],
            ),
          div(
            classes: 'chat-bubble',
            [
              text(message),
            ],
          ),
        ]);
  }
}
