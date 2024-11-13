// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:example/pages/home.dart' as prefix0;
import 'package:example/app.dart' as prefix1;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
final defaultJasprOptions = JasprOptions(
  clients: {
    prefix0.Home: ClientTarget<prefix0.Home>('pages/home'),
  },
  styles: () => [
    ...prefix1.App.styles,
  ],
);
