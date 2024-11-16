import 'package:jaspr/jaspr.dart';

// By using the @client annotation this component will be automatically compiled to javascript and mounted
// on the client. Therefore:
// - this file and any imported file must be compilable for both server and client environments.
// - this component and any child components will be built once on the server during pre-rendering and then
//   again on the client during normal rendering.
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
    //  yield button(
    //       classes: "group btn btn-primary px-8",
    //       onClick: () {}, [
    //         text("Let's talk"),
    //         i(
    //             classes:
    //                 "fa-solid fa-arrow-right ml-2 ease-in-out duration-300 group-hover:translate-x-1",
    //             [])
    //       ]);

    // yield BlockButton(title: 'title');

    // yield OutLineButton(title: 'title', color: DsColor.secondary);

    // yield Button(
    //   title: 'Button',
    //   color: DsColor.secondary,
    //   onPressed: () {
    //     print('Click');
    //   },
    // );

    // yield ButtonWithBadge(
    //   title: 'Button',
    //   color: DsColor.secondary,
    //   total: '99',
    //   onPressed: () {
    //     print('Click');
    //   },
    // );

    // yield OutLineButton(
    //   title: 'OutLine Button',
    //   color: DsColor.secondary,
    //   onPressed: () {
    //     print('Click');
    //   },
    // );

    // yield GlassButton(
    //   title: 'Glass Button',
    //   onClick: () {
    //     print('Click');
    //   },
    // );

    // yield Dropdown(title: 'Dropdown Button', items: [
    //   DropdownItem(title: 'item 1'),
    //   DropdownItem(title: 'item 2'),
    //   DropdownItem(title: 'item 3'),
    // ]);

    // yield DropdownHover(title: 'Dropdown Hover Button', items: [
    //   DropdownItem(title: 'item 1'),
    //   DropdownItem(title: 'item 2'),
    //   DropdownItem(title: 'item 3'),
    // ]);

    // yield DropdownCard(
    //   title: 'Dropdown Card Button',
    //   cardTitle: 'Card Title',
    //   cardBody: 'Aliqua occaecat nostrud ipsum aliquip laborum.',
    // );

    // yield Button(
    //   title: 'Open Dialog',
    //   attributes: {"onclick": "my_modal_1.showModal()"},
    // );
    // yield Dialog(
    //   id: "my_modal_1",
    //   title: 'Title',
    //   message:
    //       'Aute commodo est deserunt est laboris consectetur dolor reprehenderit.',
    //   buttonTitle: 'Close',
    // );

    // yield Divider(title: 'Title');

    // yield Avatar(
    //   imgUrl:
    //       'https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp',
    // );

    // yield div(classes: "flex flex-col grow h-screen w-screen justify-center	", [
    // ]);

    // yield div(classes: "flex flex-col grow h-screen w-screen justify-center", [
    //   SwapFlip(
    //     front: '😈',
    //     back: '😇',
    //   ),
    // ]);

    // yield div(classes: "flex flex-col grow h-screen w-screen justify-center", [
    //   SwapFlip(),
    // ]);

    // yield ButtonWithBadge(
    //   total: '+123',
    //   title: 'Inbox',
    // );

    // yield section([
    //   ThemeSwitch(),
    // ]);
  }
}
