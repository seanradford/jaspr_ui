import 'package:jaspr/jaspr.dart';
import 'package:jaspr_ui/jaspr_ui.dart';

class TitleGradient extends StatelessComponent {
  const TitleGradient({
    super.key,
    this.fromColor = FromColor.green_300,
    this.viaColor = ViaColor.blue_500,
    this.toColor = ToColor.purple_600,
    required this.title,
  });

  final FromColor fromColor;
  final ViaColor viaColor;
  final ToColor toColor;
  final String title;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield h1(
      classes:
          'bg-gradient-to-r ${fromColor.className} ${viaColor.className} ${toColor.className} bg-clip-text text-3xl font-extrabold text-transparent sm:text-5xl',
      [
        text(title),
      ],
    );
  }
}



