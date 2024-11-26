// ignore_for_file: unnecessary_string_interpolations

import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

/// A flexible timeline component for creating horizontal or vertical timelines.
///
/// The [Timeline] class allows you to create a list of timeline items with
/// customizable orientation and icon behavior.
///
/// [children] is a required list of [TimelineItem] to display in the timeline.
/// [vertical] determines if the timeline is displayed vertically or horizontally.
/// [snapIcon] controls whether icons are snapped to a specific position.
class Timeline extends StatelessComponent {
  /// List of timeline items to be displayed
  final List<TimelineItem> children;

  /// Determines the orientation of the timeline
  ///
  /// When true, the timeline will be displayed vertically.
  /// Default is false (horizontal).
  final bool vertical;

  /// Controls whether icons are snapped to a specific position
  ///
  /// When true, icons will be snapped according to the timeline's design.
  /// Default is false.
  final bool snapIcon;

  /// Constructs a [Timeline] component
  ///
  /// [key] is an optional key for the component
  /// [children] is the list of [TimelineItem] to display (required)
  /// [vertical] sets the timeline orientation (optional, default is false)
  /// [snapIcon] enables icon snapping (optional, default is false)
  Timeline({
    super.key,
    required this.children,
    this.vertical = false,
    this.snapIcon = false,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield ul(
      classes: 'timeline '
          '${snapIcon == true ? 'timeline-snap-icon ' : ''}'
          '${vertical == true ? 'timeline-vertical ' : ''}',
      children,
    );
  }
}

/// Represents a single item in the timeline.
///
/// [TimelineItem] allows detailed customization of each timeline step,
/// including start and end titles, icons, lines, and colors.
class TimelineItem extends StatelessComponent {
  /// Title displayed at the start of the timeline item
  final String startTitle;

  /// Icon used in the middle of the timeline item
  final String? middleIcon;

  /// Optional title displayed at the end of the timeline item
  final String? endTitle;

  /// Determines if a line should be drawn before the start title
  final bool startLine;

  /// Determines if a line should be drawn after the end title
  final bool endLine;

  /// Determines if a box should be drawn around the start title
  final bool startBox;

  /// Determines if a box should be drawn around the end title
  final bool endBox;

  /// Color of the line preceding the start title
  final BackgroundColor? startLineColor;

  /// Color of the line following the end title
  final BackgroundColor? endLineColor;

  /// Color of the middle icon
  final TextColor? iconColor;

  /// Constructs a [TimelineItem]
  ///
  /// Parameters allow extensive customization of each timeline step:
  /// [key] is an optional key for the component
  /// [startLine] enables a line before the start title (default true)
  /// [startLineColor] sets the color of the preceding line
  /// [startBox] adds a box around the start title (default true)
  /// [startTitle] is the required text for the start of the item
  /// [middleIcon] sets the icon in the middle (default is a checkmark)
  /// [iconColor] sets the color of the middle icon
  /// [endBox] adds a box around the end title (default true)
  /// [endTitle] is an optional text for the end of the item
  /// [endLine] enables a line after the end title (default true)
  /// [endLineColor] sets the color of the following line
  TimelineItem({
    super.key,
    this.startLine = true,
    this.startLineColor = BackgroundColor.base300,
    this.startBox = true,
    required this.startTitle,
    this.middleIcon = 'fas fa-circle-check',
    this.iconColor = TextColor.base300,
    this.endBox = true,
    this.endTitle,
    this.endLine = true,
    this.endLineColor = BackgroundColor.base300,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield li([
      if (startLine)
        hr(
          classes:
              '${startLineColor != null ? '${startLineColor!.className}' : ''}',
        ),
      div(
        classes: 'timeline-start '
            '${startBox ? 'timeline-box' : ''}',
        [
          text(startTitle),
        ],
      ),
      if (middleIcon != null)
        div(
          classes: 'timeline-middle',
          [
            div(
              classes: '$middleIcon w-4 '
                  '${iconColor != null ? '${iconColor!.className}' : ''}',
              [],
            )
          ],
        ),
      if (endTitle != null)
        div(
          classes: 'timeline-end '
              '${endBox ? 'timeline-box' : ''}',
          [text(endTitle!)],
        ),
      if (endLine)
        hr(
          classes:
              '${endLineColor != null ? '${endLineColor!.className}' : ''}',
        ),
    ]);
  }
}
