import 'package:jaspr/jaspr.dart';

/// A component that displays a chat message bubble with optional avatar.
///
/// The bubble can be aligned to either the start (left) or end (right) of its container.
/// It supports displaying a message with an optional avatar image.
///
/// Parameters:
/// - [position] - Controls the alignment of the bubble.
/// - [message] - The text content to display inside the bubble.
/// - [avatarUrl] - Optional URL for the sender's avatar image.
///
/// Example usage:
/// ```dart
/// ChatBubble(
///   position: ChatPosition.left,
///   message: "Hello!",
///   avatarUrl: "https://example.com/avatar.png",
/// )
/// ```
class ChatBubble extends StatelessComponent {
  /// Whether to align the bubble to the start (left) or end (right) of its container.
  final ChatPosition? position;

  /// The message text to display in the bubble.
  final String message;

  /// Optional URL for the avatar image.
  /// If null, no avatar will be displayed.
  final String? avatarUrl;

  /// Creates a chat bubble component.
  ///
  /// The [message] parameters are required.
  /// The [position] parameter is optional.
  /// The [avatarUrl] parameter is optional.
  ChatBubble({
    super.key,
    this.position,
    required this.message,
    this.avatarUrl,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'chat m-4 '
            '${position?.className ?? 'chat-end'}',
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

/// An enum that defines the different positions for an item on the screen.
///
/// Each position corresponds to a specific CSS class that can be used to style
/// the item accordingly.
enum ChatPosition {
  /// Positions the item at the start of the screen (platform-specific).
  left('chat-start'),

  /// Positions the item at the center of the screen (platform-specific).
  right('chat-end');

  const ChatPosition(this._className);

  final String _className;

  /// Gets the CSS class name for this item position.
  String get className => _className;
}
