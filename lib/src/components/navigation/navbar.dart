// ignore_for_file: public_member_api_docs, sort_constructors_first

// TODO : navbar component

import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

/// A flexible and customizable navigation bar component for web applications.
///
/// The [NavBar] class creates a responsive navigation bar with configurable
/// layout, colors, and content sections. It provides three main areas:
/// - Lead section (typically for logos or left-side controls)
/// - Title section (center or left-aligned)
/// - tails section (right-side controls or buttons)
///
/// This component is designed to be highly adaptable, allowing developers
/// to create consistent navigation experiences across different pages
/// and application sections.
///
class NavBar extends StatelessComponent {
  /// Controls the text color of the navigation bar.
  ///
  /// Allows setting a specific color scheme for text elements
  /// within the navigation bar. When not specified,
  /// defaults to the standard text color of the chosen background.
  final TextColor? foregroundColor;

  /// Determines the background color of the navigation bar.
  ///
  /// Provides a way to integrate the navbar with the overall
  /// design system of the application. Defaults to a neutral base color.
  final BackgroundColor backgroundColor;

  /// Components to be placed in the leading section of the navbar.
  ///
  /// Typically used for:
  /// - Application logo
  /// - Sidebar toggle button
  /// - Left-side navigation controls
  ///
  /// Optional parameter that can be omitted if no lead content is needed.
  final List<Component>? lead;

  /// Components to be placed in the tails section of the navbar.
  ///
  /// Commonly used for:
  /// - Search buttons
  /// - User profile menus
  /// - Additional navigation or action controls
  ///
  /// Optional parameter that can be omitted if no tails are required.
  final List<Component>? tails;

  /// The primary title or content of the navigation bar.
  ///
  /// Required parameter that defines the central content of the navbar.
  /// Can include text, logos, or complex custom components.
  final List<Component> title;

  /// Controls the alignment of the title section.
  final bool? centerTitle;

  /// Constructs a [NavBar] with comprehensive configuration options.
  ///
  /// Parameters:
  /// - [backgroundColor]: Sets the overall background color (defaults to base100)
  /// - [foregroundColor]: Optional text color override
  /// - [lead]: Optional leading section components
  /// - [tails]: Optional action section components
  /// - [title]: Required title/content components
  /// - [centerTitle]: Controls title alignment
  NavBar({
    this.lead,
    required this.title,
    this.centerTitle = false,
    this.tails,
    this.backgroundColor = BackgroundColor.base300,
    this.foregroundColor,
  });

  /// Builds the navigation bar component with dynamic layout and styling.
  ///
  /// Constructs the navbar by:
  /// 1. Applying background and foreground color classes
  /// 2. Conditionally rendering lead section
  /// 3. Positioning title based on [centerTitle]
  /// 4. Conditionally rendering tails section
  ///
  /// The layout adapts to the provided configuration, allowing
  /// for flexible and responsive navigation designs.
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        // Combine background and foreground color classes
        classes: 'navbar w-full ${backgroundColor.className} '
            ' ${foregroundColor?.className ?? ''}',
        [
          // Lead section (optional)
          if (lead != null)
            div(
                classes: (centerTitle == true) ? 'navbar-start' : 'flex-none',
                lead ?? []),

          // Title section with conditional positioning
          (centerTitle == true)
              ? div(classes: 'navbar-center', title)
              : div(classes: 'flex-1', title),

          // tails section (optional)
          if (tails != null) div(classes: 'navbar-end', tails ?? [])
        ]);
  }
}
