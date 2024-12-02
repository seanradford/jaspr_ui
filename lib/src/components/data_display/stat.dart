// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_string_interpolations

import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

/// A component that displays a group of statistics in either vertical or horizontal layout.
///
/// The [StatGroup] component arranges multiple [Stat] components in a consistent layout
/// with an optional shadow effect. It can display stats either horizontally (default)
/// or position based on the [position] parameter.
///
/// Example usage:
/// ```dart
/// StatGroup(
///   children: [
///     Stat(title: 'Downloads', value: '31K', desc: 'Jan 1st - Feb 1st'),
///     Stat(title: 'Users', value: '4,200', desc: '↗︎ 40 (2%)')
///   ],
///   position: StatPosition.vertical,
/// )
/// ```

class StatGroup extends StatelessComponent {
  /// The list of [Stat] components to display in the group
  final List<Stat> children;

  /// Whether to arrange the stats positon
  final StatPosition? position;

  StatGroup({super.key, required this.children, this.position});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'stats shadow '
          '${position?.className ?? ''}',
      children,
    );
  }
}

/// A component that displays a single statistic with a title, value, and description.
///
/// The [Stat] component provides a structured way to display statistical information
/// with customizable colors, optional icons, and alignment options.
///
/// Example usage:
/// ```dart
/// Stat(
///   title: 'Downloads',
///   value: '31K',
///   desc: 'Jan 1st - Feb 1st',
///   valueColor: TextColor.primary,
///   isCenter: true,
///   icon: 'some-icon-class'
/// )
/// ```
class Stat extends StatelessComponent {
  /// The title text displayed above the value
  final String title;

  /// The main statistical value to display
  final String value;

  /// Additional descriptive text shown below the value
  final String desc;

  /// The color of the value text
  final TextColor valueColor;

  /// Optional color for the description text
  final TextColor? desColor;

  /// Whether to center-align the content
  final bool isCenter;

  /// Optional CSS class name for an icon to display
  final Icon? icon;

  Stat({
    super.key,
    required this.title,
    required this.value,
    required this.desc,
    this.valueColor = TextColor.primary,
    this.desColor,
    this.isCenter = true,
    this.icon,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'stat '
            '${isCenter == true ? 'place-items-center' : ''} ',
        [
          // figure
          div(classes: "stat-figure text-secondary", [if (icon != null) icon!]),
          // stats
          div(classes: 'stat-title ', [text(title)]),
          div(classes: 'stat-value ${valueColor.className}', [text(value)]),
          div(
              classes: 'stat-desc '
                  '${desColor != null ? '${desColor!.className}' : ''} ',
              [text(desc)]),
        ]);
  }
}

/// An enum that defines the different positions for an item on the screen.
///
/// Each position corresponds to a specific CSS class that can be used to style
/// the item accordingly.
enum StatPosition {
  /// Positions the item at the start of the screen (platform-specific).
  vertical('stats-vertical'),

  /// Positions the item at the center of the screen (platform-specific).
  horizontal('stats-horizontal');

  const StatPosition(this._className);

  final String _className;

  /// Gets the CSS class name for this item position.
  String get className => _className;
}
