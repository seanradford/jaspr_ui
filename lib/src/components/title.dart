import 'package:jaspr/jaspr.dart';

class TitleGradient extends StatelessComponent {
  const TitleGradient({
    super.key,
    this.fromColor = "green-300",
    this.viaColor = "blue-500",
    this.toColor = "purple-600",
    required this.title,
  });

  final String fromColor;
  final String viaColor;
  final String toColor;
  final String title;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield h1(
      classes:
          "bg-gradient-to-r from-$fromColor via-$viaColor to-$toColor bg-clip-text text-3xl font-extrabold text-transparent sm:text-5xl",
      [
        text(title),
      ],
    );
  }
}



