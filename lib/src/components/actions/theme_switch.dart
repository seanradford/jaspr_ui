import 'package:jaspr/jaspr.dart';

import '../../icons/ic.dart';
import '../utils/icon.dart';

/// A component that renders a theme switch toggle button between the default app
/// theme (as per DaisyUI#theme) and an alternative.
///
/// By default this component creates an animated switch with sun and moon icons to toggle between
/// the app default and 'dark' theme. It uses DaisyUI's swap component for the animation effect.
///
/// Example usage:
/// ```dart
/// ThemeSwitch(isOn: true, theme: 'dark')
/// ```
///
/// Properties:
/// * [isOn] - Is the component in the 'on' (checked) state.
/// * [theme] - The theme when the component is 'on'. Defaults to 'dark'.
/// * [iconOff] - Icon to display when in the 'off' state. Defaults to 'outline_dark_mode'.
/// * [iconOn] - Icon to display when in the 'on' state. Defaults to 'outline_light_mode'.
///
class ThemeSwitch extends StatelessComponent {

  final bool isOn;

  final String theme;

  final String iconOff;

  final String iconOn;

  /// Creates a [ThemeSwitch] component.
  ///
  /// [isOn] defaults to false.
  /// [theme] defaults to 'dark'.
  /// [iconOff] defaults to Ic.outline_dark_mode.
  /// [iconOn] defaults to Ic.outline_light_mode
  const ThemeSwitch({
    this.isOn = false,
    this.theme = "dark",
    this.iconOff = Ic.outline_dark_mode,
    this.iconOn = Ic.outline_light_mode
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield label(classes: 'swap swap-rotate h-10 w-10 text-2xl', [
      input(
          type: InputType.checkbox,
          classes: 'theme-controller',
          attributes: {
            'value': theme,
            if (isOn == true) ...{
              'checked': ''
            }
          },
          [],),
      Icon(icon: iconOn, classes: 'swap-on fill-current',),
      Icon(icon: iconOff, classes: 'swap-off fill-current',),
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
<div class="dropdown dropdown-end">
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
        aria-label="Corporate"
        value="corporate" />
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
