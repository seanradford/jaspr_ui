import 'package:jaspr/jaspr.dart';

/// A collection of dropdown components that provide different ways to display
/// dropdown menus and content. These components use Tailwind CSS and DaisyUI
/// for styling.

/// Base dropdown component that displays a clickable button with a dropdown menu.
///
/// The dropdown menu appears when the button is clicked and contains a list of
/// [DropdownItem]s.
///
/// Example usage:
/// ```dart
/// Dropdown(
///   title: 'Options',
///   items: [
///     DropdownItem(title: 'Option 1'),
///     DropdownItem(title: 'Option 2'),
///   ],
/// )
/// ```
class Dropdown extends StatelessComponent {
  /// The text displayed on the dropdown button
  final String title;

  /// List of items to be displayed in the dropdown menu
  final List<DropdownItem> items;

  /// Creates a new [Dropdown] with the specified [title] and [items].
  const Dropdown({
    required this.title,
    required this.items,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: "dropdown", [
      div(
          attributes: {"role": "button", "tabindex": "0"},
          classes: "btn m-1",
          [
            text(title),
          ]),
      ul(
        attributes: {"tabindex": "0"},
        classes:
            "dropdown-content menu bg-base-100 rounded-box z-[1] w-52 p-2 shadow",
        items,
      )
    ]);
  }
}

/// Represents a single item within a dropdown menu.
///
/// Each [DropdownItem] is rendered as a clickable link within the dropdown menu.
class DropdownItem extends StatelessComponent {
  /// The text to display for this dropdown item
  final String title;

  /// Creates a new [DropdownItem] with the specified [title].
  const DropdownItem({
    required this.title,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield li([
      a([
        text(title),
      ], href: '')
    ]);
  }
}

/// A variant of the dropdown that opens on hover instead of click.
///
/// This component behaves similarly to [Dropdown] but triggers when the user
/// hovers over the button instead of clicking it.
///
/// Example usage:
/// ```dart
/// DropdownHover(
///   title: 'Hover Menu',
///   items: [
///     DropdownItem(title: 'Option 1'),
///     DropdownItem(title: 'Option 2'),
///   ],
/// )
/// ```
class DropdownHover extends StatelessComponent {
  /// The text displayed on the dropdown button
  final String title;

  /// List of items to be displayed in the dropdown menu
  final List<DropdownItem> items;

  /// Creates a new [DropdownHover] with the specified [title] and [items].
  const DropdownHover({
    required this.title,
    required this.items,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: "dropdown dropdown-hover", [
      div(
        attributes: {"role": "button", "tabindex": "0"},
        classes: "btn m-1",
        [
          text(title),
        ],
      ),
      ul(
        attributes: {"tabindex": "0"},
        classes:
            "dropdown-content menu bg-base-100 rounded-box z-[1] w-52 p-2 shadow",
        items,
      )
    ]);
  }
}

/// A dropdown component that displays a card with a title and body text.
///
/// Instead of showing a list of items, this dropdown displays a card with
/// a header and content when activated.
///
/// Example usage:
/// ```dart
/// DropdownCard(
///   title: 'Info',
///   cardTitle: 'Important Information',
///   cardBody: 'This is some important content in the card.',
/// )
/// ```
class DropdownCard extends StatelessComponent {
  /// The text displayed on the dropdown button
  final String title;

  /// The title text displayed at the top of the card
  final String cardTitle;

  /// The main content text displayed in the card body
  final String cardBody;

  /// Creates a new [DropdownCard] with the specified [title], [cardTitle],
  /// and [cardBody].
  const DropdownCard({
    required this.title,
    required this.cardTitle,
    required this.cardBody,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: "dropdown", [
      div(
          attributes: {"role": "button", "tabindex": "0"},
          classes: "btn m-1",
          [
            text(title),
          ]),
      div(
        attributes: {"tabindex": "0"},
        classes:
            "dropdown-content card card-compact bg-primary text-primary-content z-[1] w-64 p-2 shadow",
        [
          div(classes: "card-body", [
            h3(
              classes: "card-title",
              [
                text(cardTitle),
              ],
            ),
            p(
              [
                text(cardBody),
              ],
            ),
          ])
        ],
      )
    ]);
  }
}