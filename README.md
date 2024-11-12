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
    git: https://github.com/anoochit/jaspr_ui.git
```

Add Tailwindcss and Font Awesome Icon, you might use `jaspr_tailwind`.

```dart
runApp(Document(
    title: 'example',
    head: [
      // tailwindcss
      script(
        src: 'https://cdn.tailwindcss.com',
        [],
      ),
      // fontawesome
      link(
        rel: 'stylesheet',
        href:
            'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css',
      ),
    ],
    ...
    body: App(),
  ));
```