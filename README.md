# Jaspr UI

A simple component for Jaspr.

`This work under development, feel free to contribute.`


```yaml
dependencies:
  jaspr_ui: ^1.0.0
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
            'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css',
      ),
    ],
    ...
    body: App(),
  ));
```