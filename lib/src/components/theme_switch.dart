import 'package:jaspr/jaspr.dart';

/// A component that renders a theme switch toggle button between light and dark modes.
///
/// This component creates an animated switch with sun and moon icons to toggle between
/// light and dark themes. It uses DaisyUI's swap component for the animation effect.
///
/// Example usage:
/// ```dart
/// ThemeSwitch(theme: "dark")
/// ```
///
/// Properties:
/// * [theme] - The initial theme value. Defaults to "light".
///   Possible values are "light" or "dark".
class ThemeSwitch extends StatelessComponent {
  /// The current theme value. Controls the initial state of the switch.
  final String theme;

  /// Creates a [ThemeSwitch] component.
  ///
  /// [theme] defaults to "light" if not specified.
  const ThemeSwitch({
    this.theme = "light",
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield label(classes: 'swap swap-rotate h-10 w-10 text-2xl', [
      input(
          type: InputType.checkbox,
          classes: 'theme-controller',
          attributes: {'value': theme},
          []),
      div(classes: 'far fa-moon swap-on fill-current', []),
      div(classes: 'far fa-sun swap-off fill-current', []),
    ]);
  }
}

/// A component that renders a dropdown menu for selecting different theme options.
///
/// This component creates a dropdown button that allows users to choose between
/// different predefined themes using radio buttons. It uses DaisyUI's dropdown
/// and radio components for the UI.
///
/// Available themes:
/// * default - The default theme
/// * retro - A retro-styled theme
/// * cyberpunk - A cyberpunk-inspired theme
/// * valentine - A valentine-themed style
/// * aqua - An aqua-colored theme
///
/// Example usage:
/// ```dart
/// ThemeSwitchOptions()
/// ```
///
/// Note: The theme selection is handled by DaisyUI's theme-controller class,
/// which automatically applies the selected theme to the application.
class ThemeSwitchOptions extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield raw('''
<div class="dropdown mb-72">
  <div tabindex="0" role="button" class="btn m-1">
    Theme
    <svg
      width="12px"
      height="12px"
      class="inline-block h-2 w-2 fill-current opacity-60"
      xmlns="http://www.w3.org/2000/svg"
      viewBox="0 0 2048 2048">
      <path d="M1799 349l242 241-1017 1017L7 590l242-241 775 775 775-775z"></path>
    </svg>
  </div>
  <ul tabindex="0" class="dropdown-content bg-base-300 rounded-box z-[1] w-52 p-2 shadow-2xl">
    <li>
      <input
        type="radio"
        name="theme-dropdown"
        class="theme-controller btn btn-sm btn-block btn-ghost justify-start"
        aria-label="Default"
        value="default" />
    </li>
    <li>
      <input
        type="radio"
        name="theme-dropdown"
        class="theme-controller btn btn-sm btn-block btn-ghost justify-start"
        aria-label="Retro"
        value="retro" />
    </li>
    <li>
      <input
        type="radio"
        name="theme-dropdown"
        class="theme-controller btn btn-sm btn-block btn-ghost justify-start"
        aria-label="Cyberpunk"
        value="cyberpunk" />
    </li>
    <li>
      <input
        type="radio"
        name="theme-dropdown"
        class="theme-controller btn btn-sm btn-block btn-ghost justify-start"
        aria-label="Valentine"
        value="valentine" />
    </li>
    <li>
      <input
        type="radio"
        name="theme-dropdown"
        class="theme-controller btn btn-sm btn-block btn-ghost justify-start"
        aria-label="Aqua"
        value="aqua" />
    </li>
  </ul>
</div>
''');
  }
}
