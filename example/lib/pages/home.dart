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
    yield Breadcrumbs(children: [
      BreadcrumbItem(
        title: 'title',
        href: '#',
        icon: 'fas fa-house',
      ),
      BreadcrumbItem(
        title: 'title',
        href: '#',
      ),
      BreadcrumbItem(
        title: 'title',
        href: '#',
      ),
    ]);
  }
}
