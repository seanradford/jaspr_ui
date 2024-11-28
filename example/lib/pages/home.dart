import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

@client
class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int currentIndex = 0;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Pagination(
      currentIndex: currentIndex,
      children: List.generate(
        5,
        (i) => PaginationItem(href: '#'),
      ),
    );
  }
}
