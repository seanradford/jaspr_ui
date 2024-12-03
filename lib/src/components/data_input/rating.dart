import 'package:jaspr/jaspr.dart';

import '../../colors/background_colors.dart';
import '../layout/mask.dart';

class Rating extends StatelessComponent {
  final String name;
  final int value;
  final MaskShape shape;
  final ValueChanged? onChange;
  final BackgroundColor color;
  final RatingSize? size;

  Rating({
    super.key,
    required this.name,
    required this.value,
    this.shape = MaskShape.star,
    this.onChange,
    this.color = BackgroundColor.amber500,
    this.size,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        classes: 'rating '
            '${size != null ? size!.className : ''}',
        List.generate(6, (i) {
          final checked = (value == i) ? {'checked': 'checked'} : null;
          return input(
              name: name,
              type: InputType.radio,
              classes: (i == 0)
                  ? 'rating-hidden '
                  : 'mask ${shape.className} '
                      '${color.className}',
              attributes: checked,
              onChange: (value) => onChange?.call((i)),
              []);
        }));
  }
}

enum RatingSize {
  xs('rating-xs'),
  sm('rating-sm'),
  md('rating-md'),
  lg('rating-lg');

  const RatingSize(this._className);
  final String _className;
  String get className => _className;
}
