# Jaspr UI

A simple component for Jaspr.

`This work under development, feel free to contribute.`

Add dependency in pubspec.yaml

```yaml
dependencies:
  jaspr_ui: ^1.0.0
```

Or using git repository

```yaml
dependencies:
  jaspr_ui:
    git:
      url: https://github.com/anoochit/jaspr_ui.git
      ref: daisyui # branch name
```

Add Tailwindcss and Font Awesome Icon from CDN. If you want to build custom css file, you should use [jaspr_tailwind](https://pub.dev/packages/jaspr_tailwind) .

```dart
runApp(Document(
  lang: 'en',
  title: 'example',
  head: daisyUiStyles,
  body: App(),
));
```

Edit App componet to return DaisyUI to insert `data-theme` attribute in html document.

```dart
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

import 'pages/home.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DaisyUI(
      theme: 'dracular',
      [
        Router(routes: [
          Route(
              path: '/',
              title: 'Home',
              builder: (context, state) => const Home()),
        ]),
      ],
    );
  }

}
```

Update home page to use a component.

```dart
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

@client
class Home extends StatefulComponent {
  const Home({super.key});
  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield TitleGradient(
      title: 'Pariatur veniam reprehenderit tempor fugiat.',
    );
  }
}

```
