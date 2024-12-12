import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

import '../components/counter.dart';

class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    // navbar
    yield NavBar(
      lead: [
        DrawerButton(
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
    );

    // drawer
    yield Drawer(
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
          ),
        )
      ],

      // body content
      content: [
        Container(
          padding: PaddingSize.p4,
          margin: MarginSize.mxAuto,
          children: [
            TitleGradient(
              title: 'Welcome to Our Dynamic Web Application',
            ),
            Counter(),
          ],
        )
      ],
    );

    // footer
    yield Footer(
      children: [
        FooterSidebarLogo(
          logo: Icon(
            icon: FaBrands.slack,
            width: 48.0,
            height: 48.0,
          ),
          line1: p([
            text('Cillum exercitation anim officia tempor ad.'),
          ]),
          line2: p([
            text('Ea aute excepteur magna nostrud tempor commodo veniam.'),
          ]),
        ),
        ...List.generate(
          2,
          (i) => FooterNav(
            title: 'Title',
            items: List.generate(
              3,
              (j) => FooterNavItem(
                title: 'title',
                href: '#',
              ),
            ),
          ),
        )
      ],
    );
  }
}
