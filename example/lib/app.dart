import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

import 'pages/home.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DaisyUI(
      theme: 'cupcake',
      [
        Router(routes: [
          Route(
            path: '/',
            title: 'Home',
            builder: (context, state) => const Home(),
          )
        ])
      ],
    );
  }
}
