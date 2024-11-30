// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:example/pages/about.dart' as prefix0;
import 'package:example/pages/home.dart' as prefix1;
import 'package:example/app.dart' as prefix2;

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
    prefix2.App: ClientTarget<prefix2.App>('app'),
    prefix0.About: ClientTarget<prefix0.About>('pages/about'),
    prefix1.Home: ClientTarget<prefix1.Home>('pages/home'),
  },
);
