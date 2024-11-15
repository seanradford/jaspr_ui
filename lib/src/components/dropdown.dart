// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jaspr/jaspr.dart';

class Dropdown extends StatelessComponent {
  final String title;
  final List<DropdownItem> items;

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

class DropdownItem extends StatelessComponent {
  final String title;

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

class DropdownHover extends StatelessComponent {
  final String title;
  final List<DropdownItem> items;

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

class DropdownCard extends StatelessComponent {
  final String title;
  final String cardTitle;
  final String cardBody;

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
