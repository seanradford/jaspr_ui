import 'package:jaspr/jaspr.dart';

class HeaderMenuButton extends StatelessComponent {
  const HeaderMenuButton(this.children, {super.key });

  final List<Component> children;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield article(
      classes: "overflow-hidden rounded-lg shadow transition hover:shadow-lg",
      children,
    );
  }
}
