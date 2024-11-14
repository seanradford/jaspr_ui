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

Add Tailwindcss and Font Awesome Icon, you might use `jaspr_tailwind`.

```dart
runApp(Document(
  lang: 'en',
  title: 'example',
  head: daisyUiStyles,
  body: App(),
));
```