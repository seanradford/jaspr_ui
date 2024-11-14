import 'package:jaspr/jaspr.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    // var activePath = context.binding.currentUri.path;
    yield header([]);
  }
}
