/*
<div class="grid h-screen place-content-center bg-white px-4">
  <div class="text-center">
    <h1 class="text-9xl font-black text-gray-200">404</h1>

    <p class="text-2xl font-bold tracking-tight text-gray-900 sm:text-4xl">Uh-oh!</p>

    <p class="mt-4 text-gray-500">We can't find that page.</p>

    <a
      href="#"
      class="mt-6 inline-block rounded bg-indigo-600 px-5 py-3 text-sm font-medium text-white hover:bg-indigo-700 focus:outline-none focus:ring"
    >
      Go Back Home
    </a>
  </div>
</div>
*/

import 'package:jaspr/jaspr.dart';

class CenterWithErrorCode extends StatelessComponent {
  const CenterWithErrorCode({
    super.key,
    required this.title,
    required this.message,
    required this.errorCode,
    required this.link,
    this.buttonTitle = "Back to Home",
    this.backgroundColor = "white",
  });

  final String title;
  final String message;
  final String errorCode;
  final String link;
  final String buttonTitle;
  final String? backgroundColor;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: "grid h-screen place-content-center bg-$backgroundColor px-4",
        [
          div(classes: "text-center", [
            h1(
              classes: "text-9xl font-black text-gray-200",
              [text(errorCode)],
            ),
            p(
              classes:
                  "text-2xl font-bold tracking-tight text-gray-900 sm:text-4xl",
              [text(title)],
            ),
            p(
              classes: "mt-4 text-gray-500",
              [text(message)],
            ),
            a(
              href: link,
              classes:
                  "mt-6 inline-block rounded bg-indigo-600 px-5 py-3 text-sm font-medium text-white hover:bg-indigo-700 focus:outline-none focus:ring",
              [text(buttonTitle)],
            )
          ]),
        ]);
  }
}
