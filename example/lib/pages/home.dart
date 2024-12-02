import 'package:example/components/counter.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Screen([
      NavBar(
        lead: [
          DrawerButton(
            id: 'drawer',
            icon: Icon(icon: FaSolid.bars),
          ),
        ],
        title: [
          div(classes: 'px-2 lg:px-4', [
            Link(
              to: '/',
              child: TextHeading(
                title: 'Jaspr UI',
                size: TextSize.size3,
              ),
            ),
          ])
        ],
        tails: [
          ThemeSwitch(theme: 'light'),
        ],
      ),
      Drawer(
        id: 'drawer',
        sidebar: [
          SidebarMenu(
              items: List.generate(
            10,
            (i) => MenuItem(
              icon: (i == 0)
                  ? Icon(icon: Ic.round_home)
                  : Icon(icon: Ic.description),
              badge: (i == 0) ? Badge(title: '+99') : null,
              title: 'Menu ${i + 1}',
              href: '#',
            ),
          ))
        ],
        content: [
          TitleGradient(
            title: 'Welcome to Our Dynamic Web Application',
          ),
          Avatar(
            url: 'https://avatars.githubusercontent.com/u/1182518?v=4',
            mask: MaskShape.circle,
          ),
          Counter(),
        ],
      ),
    ]);
  }
}
