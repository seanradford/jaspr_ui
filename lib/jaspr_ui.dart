/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

import 'package:jaspr/jaspr.dart';

export 'src/components/button.dart';
export 'src/components/dropdown.dart';
export 'src/components/dialog.dart';
export 'src/components/theme_switch.dart';
export 'src/components/avatar.dart';
export 'src/components/divider.dart';
export 'src/components/swap.dart';
export 'src/components/badge.dart';

List<Component> daisyUiStyles = [
  // tailwindcss
  script(
    src: 'https://cdn.tailwindcss.com',
    [],
  ),

  // daisy ui
  link(
    href: "https://cdn.jsdelivr.net/npm/daisyui@4.12.14/dist/full.min.css",
    rel: "stylesheet",
    type: "text/css",
  ),

  // fontawesome
  link(
    rel: 'stylesheet',
    href:
        'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css',
  ),
];

 