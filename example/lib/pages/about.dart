import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

@client
class About extends StatefulComponent {
  const About({super.key});

  @override
  State<About> createState() => AboutState();
}

class AboutState extends State<About> {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield TitleGradient(title: 'About page');
  }
}
