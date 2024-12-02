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
    yield Screen(
      type: ScreenType.scrollable,
      [
        NavBar(
          backgroundColor: BackgroundColor.base300,
          lead: [
            DrawerButton(
              id: 'drawer',
              icon: Icon(icon: Lucide.menu),
            ),
          ],
          title: [
            Padding(
              sizes: [
                PaddingSize.pl4,
              ],
              child: Link(
                to: '/',
                child: TextHeading(
                  title: 'Jaspr UI',
                  size: TextSize.size3,
                  bold: true,
                ),
              ),
            ),
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
                badge: (i == 0)
                    ? Badge(
                        title: '+99',
                        color: BadgeColor.secondary,
                      )
                    : null,
                title: 'Menu ${i + 1}',
                href: '#',
              ),
            ))
          ],
          content: [
            TitleGradient(
              title: 'Welcome to Our Dynamic Web Application',
            ),
            Counter(),
          ],
        ),
      ],
    );
  }
}
