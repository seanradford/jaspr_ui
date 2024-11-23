import 'package:jaspr/jaspr.dart';

class TwoPane extends StatelessComponent {
  final List<Component> sidebar;
  final List<Component> content;

  TwoPane({super.key, required this.sidebar, required this.content});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'flex flex-row gap-4', [
      div(classes: 'flex-none w-[250px] h-screen overflow-auto', sidebar),
      div(classes: 'grow h-screen h-screen overflow-auto', content),
    ]);
  }
}
