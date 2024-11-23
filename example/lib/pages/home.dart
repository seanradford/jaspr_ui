import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

// By using the @client annotation this component will be automatically compiled to javascript and mounted
// on the client. Therefore:
// - this file and any imported file must be compilable for both server and client environments.
// - this component and any child components will be built once on the server during pre-rendering and then
//   again on the client during normal rendering.
// @client
class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    // Run code depending on the rendering environment.
    if (kIsWeb) {
      print("Hello client");
      // When using @client components there is no default `main()` function on the client where you would normally
      // run any client-side initialization logic. Instead you can put it here, considering this component is only
      // mounted once at the root of your client-side component tree.
    } else {
      print("Hello server");
    }
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield TwoPane(sidebar: [
      div(classes: 'pt-4 pb-4', [
        TitleGradient(title: 'title'),
      ]),
      p([
        text(
            'Veniam exercitation sunt duis aute cillum aute nostrud sunt cillum reprehenderit voluptate laboris qui. Laborum ipsum dolor in non eiusmod aliquip labore aute sit fugiat nulla. Veniam id eu et ea adipisicing velit aliqua sunt id qui cupidatat laboris nulla. Dolor veniam sit sunt consectetur dolor dolor do laborum incididunt. Exercitation ad enim adipisicing cupidatat nisi esse sunt. Cupidatat occaecat dolor ea do ut. Ad duis consectetur ut adipisicing sunt pariatur veniam commodo reprehenderit.')
      ])
    ], content: [
      div(classes: 'pt-4 pb-4', [
        TitleGradient(title: 'title'),
      ]),
      p([
        text(
            'Veniam exercitation sunt duis aute cillum aute nostrud sunt cillum reprehenderit voluptate laboris qui. Laborum ipsum dolor in non eiusmod aliquip labore aute sit fugiat nulla. Veniam id eu et ea adipisicing velit aliqua sunt id qui cupidatat laboris nulla. Dolor veniam sit sunt consectetur dolor dolor do laborum incididunt. Exercitation ad enim adipisicing cupidatat nisi esse sunt. Cupidatat occaecat dolor ea do ut. Ad duis consectetur ut adipisicing sunt pariatur veniam commodo reprehenderit.')
      ])
    ]);
  }
}
