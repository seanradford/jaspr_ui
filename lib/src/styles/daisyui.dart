
import 'package:jaspr/jaspr.dart';

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

 