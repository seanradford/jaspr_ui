// FIXME : should modify style in component items

import 'package:jaspr/jaspr.dart';

/// A component for creating a joined group of items with optional positioning.
///
/// The Join component allows you to group multiple components together
/// with a consistent visual connection, typically used for creating button
/// groups, input groups, or other related UI elements.
///
/// Example usage:
/// ```dart
/// Join(
///   position: JoinPosition.horizontal,
///   items: [
///     Button(title: 'First'),
///     Button(title: 'Second'),
///     Button(title: 'Third')
///   ]
/// )
/// ```
class Join extends StatelessComponent {
  /// The list of components to be joined together.
  ///
  /// These components will be rendered in the order they are provided
  /// and wrapped with join-item classes to create a connected appearance.
  final List<Component> items;

  /// The positioning of the joined items.
  ///
  /// Determines the layout orientation of the joined components.
  /// Can be null, which defaults to the default styling of the join class.
  final JoinPosition? position;

  /// Constructor for creating a Join component.
  ///
  /// [key] is an optional parameter for widget identification.
  /// [items] is the list of components to be joined.
  /// [position] defines the orientation of the joined items.
  Join({super.key, required this.items, this.position});

  /// Builds the joined component by creating a div that wraps the items.
  ///
  /// Applies CSS classes for joining and positioning:
  /// - 'join' class as the base
  /// - Optional position-specific class
  /// - Each item is wrapped in a 'join-item' class
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'join '
          '${position?.className ?? ''}',
      List.generate(items.length, (i) {
        final item = items[i];
        return div(classes: 'join-item', [item]);
      }),
    );
  }
}

/// An enum that defines the different positions for an item on the screen.
///
/// Each position corresponds to a specific CSS class that can be used to style
/// the item accordingly.
enum JoinPosition {
  /// Positions the item at the start of the screen (platform-specific).
  vertical('join-vertical'),

  /// Positions the item at the center of the screen (platform-specific).
  horizontal('join-horizontal');

  const JoinPosition(this._className);

  final String _className;

  /// Gets the CSS class name for this item position.
  String get className => _className;
}
