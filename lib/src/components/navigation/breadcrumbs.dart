// ignore_for_file: unnecessary_string_interpolations

import 'package:jaspr/jaspr.dart';

import '../utils/icon.dart';

/// Represents a breadcrumb navigation component that renders a list of clickable items.
///
/// The [Breadcrumbs] widget generates a breadcrumb trail with optional icons,
/// where each item can be clicked to navigate to a specific page or section.
///
/// Example usage:
/// ```dart
/// Breadcrumbs(
///   children: [
///     BreadcrumbItem(title: 'Home', href: '/', icon: 'fas fa-house'),
///     BreadcrumbItem(title: 'Products', href: '/products'),
///   ]
/// )
/// ```
class Breadcrumbs extends StatelessComponent {
  /// A list of [BreadcrumbItem] to be displayed in the breadcrumb navigation.
  final List<BreadcrumbItem> children;

  /// Creates a [Breadcrumbs] widget.
  ///
  /// [key] is an optional key for the widget.
  /// [children] is a required list of breadcrumb items to display.
  Breadcrumbs({super.key, required this.children});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'breadcrumbs text-sm', [
      ul(List.generate(children.length, (index) {
        final item = children[index];
        final title = item.title;
        final href = item.href;
        final icon = item.icon;

        return li([
          a([
            if (icon != null) icon,
            text('$title'),
          ], href: href)
        ]);
      })),
    ]);
  }
}

/// Represents an individual item in a breadcrumb navigation.
///
/// Each [BreadcrumbItem] contains a title, an optional icon, and a hyperlink.
class BreadcrumbItem {
  /// The text displayed for this breadcrumb item.
  String title;

  /// An optional CSS class or icon identifier for the breadcrumb item.
  ///
  /// This can be used to display an icon before the title text.
  Icon? icon;

  /// The destination URL or route for this breadcrumb item.
  String href;

  /// Creates a [BreadcrumbItem] with the specified properties.
  ///
  /// [title] is the text to display (required).
  /// [icon] is an optional icon class or identifier.
  /// [href] is the destination link (required).
  BreadcrumbItem({
    required this.title,
    this.icon,
    required this.href,
  });
}
