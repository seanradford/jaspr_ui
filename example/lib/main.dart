// The entrypoint for the **server** environment.
//
// The [main] method will only be executed on the server during pre-rendering.
// To run code on the client, use the @client annotation.

// Server-specific jaspr import.
import 'package:jaspr/server.dart';
// Imports the [App] component.
import 'app.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'jaspr_options.dart';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(
    options: defaultJasprOptions,
  );

  // Starts the app.
  runApp(Document(
    lang: 'en',
    title: 'example',
    head: [
      link(href: 'styles.css', rel: 'stylesheet'),
    ],
    styles: [
      // Special import rule to include to another css file.
      css.import('https://fonts.googleapis.com/css?family=Roboto'),
      // Each style rule takes a valid css selector and a set of styles.
      // Styles are defined using type-safe css bindings and can be freely chained and nested.
      css('html, body')
          .text(
              fontFamily: const FontFamily.list(
                  [FontFamily('Roboto'), FontFamilies.sansSerif]))
          .box(margin: EdgeInsets.zero, padding: EdgeInsets.zero),
      // css('h1').text(fontSize: 4.rem).box(margin: EdgeInsets.unset),
      // css('h2').text(fontSize: 1.rem).box(margin: EdgeInsets.unset),
      // css('h3').text(fontSize: 0.5.rem).box(margin: EdgeInsets.unset),
      // css('h4').text(fontSize: 0.25.rem).box(margin: EdgeInsets.unset),
    ],
    body: App(),
  ));
}
