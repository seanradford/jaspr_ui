// ignore_for_file: constant_identifier_names

import 'package:jaspr/jaspr.dart';

/// A customizable tab component that displays a list of selectable tabs.
///
/// The [Tab] component allows users to switch between different views or sections
/// using a tabbed interface. It supports different visual styles through [TabType]
/// and maintains the current selection state.
///
/// Example usage:
/// ```dart
/// Tab(
///   children: [
///     TabItem(title: 'Tab 1'),
///     TabItem(title: 'Tab 2'),
///   ],
///   currentIndex: 0,
///   type: TabType.tabs_boxed,
///   onChanged: (index) => print('Selected tab: $index'),
/// )
/// ```
class Tab extends StatelessComponent {
  /// The list of tab items to display.
  final List<TabItem> children;
  /// The index of the currently selected tab.
  final int currentIndex;

  /// Optional visual style to apply to the tab component.
  /// When null, default styling is used.
  final TabType? type;

  /// Callback function that is called when a tab is selected.
  /// The function receives the index of the selected tab.
  final ValueChanged<int> onChanged;

  /// Creates a new [Tab] instance.
  ///
  /// [children] must not be empty and contains the list of tabs to display.
  /// [currentIndex] must be valid index within the [children] list.
  /// [type] determines the visual appearance of the tabs.
  /// [onChanged] is called whenever the user selects a different tab.
  Tab({
    super.key,
    required this.children,
    required this.currentIndex,
    this.type,
    required this.onChanged,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'tabs '
            '${type != null ? ' ${type!.className}' : ''}',
        List.generate(children.length, (index) {
          final item = children[index];
          final title = item.title;
          final active = (index == currentIndex) ? 'tab-active' : '';
          return button(
            classes: 'tab $active',
            [text(title)],
            onClick: () {
              onChanged.call(index);
            },
          );
        }));
  }
}

/// Represents a single tab item within the [Tab] component.
///
/// Each [TabItem] contains a title that will be displayed in the tab bar.
class TabItem {
  /// The text to display for this tab.
  final String title;
  /// Creates a new [TabItem] with the specified [title].
  TabItem({required this.title});
}

/// Defines the available visual styles for the [Tab] component.
///
/// These styles affect how the tabs are rendered and their appearance:
/// - [tabs_lifted]: Tabs appear raised above the content
/// - [tabs_bordered]: Tabs have visible borders
/// - [tabs_boxed]: Tabs are displayed in contained boxes
enum TabType {
  /// Lifted style with elevated appearance
  tabs_lifted,
  /// Style with visible borders
  tabs_bordered,
  /// Contained box style
  tabs_boxed;

  /// Returns the CSS class name associated with this tab type.
  String get className {
    switch (this) {
      case TabType.tabs_lifted:
        return 'tabs-lifted';
      case TabType.tabs_bordered:
        return 'tabs-bordered';
      case TabType.tabs_boxed:
        return 'tabs-boxed';
    }
  }
}
