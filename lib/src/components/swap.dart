import 'package:jaspr/jaspr.dart';

class SwapFlip extends StatelessComponent {
  const SwapFlip({
    this.front = '😈',
    this.back = '😇',
  });

  final String? front;
  final String? back;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield label(classes: "swap swap-flip text-9xl", [
      input(
        [],
        type: InputType.checkbox,
      ),
      div(
        classes: "swap-on",
        [
          text(front!),
        ],
      ),
      div(
        classes: "swap-off",
        [
          text(back!),
        ],
      ),
    ]);
  }
}
