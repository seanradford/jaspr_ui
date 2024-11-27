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
    yield div(classes: 'p-4', [
      TitleGradient(title: 'title'),
    ]);
  }
}
