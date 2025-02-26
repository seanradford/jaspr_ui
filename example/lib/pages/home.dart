import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:jaspr_ui/jaspr_ui.dart' as ju;

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
    yield ju.NavBar(
      lead: [
        ju.DrawerButton(
          icon: ju.Icon(icon: ju.Lucide.menu),
        ),
      ],
      title: [
        ju.Padding(
          sizes: [
            ju.PaddingSize.pl4,
          ],
          child: Link(
            to: '/',
            child: ju.TextHeading(
              title: 'Jaspr UI',
              size: ju.TextSize.size3,
              bold: true,
            ),
          ),
        ),
      ],
      tails: [
        ju.ThemeSwitch(),
      ],
    );

    // drawer
    yield ju.Drawer(
      sidebar: [
        ju.SidebarMenu(
          items: List.generate(
            10,
            (i) => ju.MenuItem(
              icon: (i == 0)
                  ? ju.Icon(icon: ju.Ic.round_home)
                  : ju.Icon(icon: ju.Ic.description),
              badge: (i == 0)
                  ? ju.Badge(
                      title: '+99',
                      color: ju.BadgeColor.secondary,
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
        ju.Container(
          padding: ju.PaddingSize.p4,
          margin: ju.MarginSize.mxAuto,
          children: [
            ju.TitleGradient(
              title: 'Welcome to Our Dynamic Web Application',
            ),
            Counter(),
            //ju.ThemeSwitchOptions()
          ],
        )
      ],
    );

    // footer
    yield ju.Footer(
      children: [
        ju.FooterSidebarLogo(
          logo: ju.Icon(
            icon: ju.FaBrands.slack,
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
          (i) => ju.FooterNav(
            title: 'Title',
            items: List.generate(
              3,
              (j) => ju.FooterNavItem(
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
