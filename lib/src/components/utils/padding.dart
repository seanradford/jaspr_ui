import 'package:jaspr/jaspr.dart';

import '../../sizes/padding_size.dart';

// FIXME : need better design

class Padding extends StatelessComponent {
  final List<PaddingSize> sizes;
  final List<PaddingSize>? sizesSM;
  final List<PaddingSize>? sizesMD;
  final List<PaddingSize>? sizesLG;

  final Component child;

  final Map<String, String>? attributes;

  Padding({
    super.key,
    required this.sizes,
    this.sizesSM,
    this.sizesMD,
    this.sizesLG,
    this.attributes,
    required this.child,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    String ksize = '';
    for (var e in sizes) {
      ksize = '$ksize${e.className} ';
    }

    if (sizesSM != null) {
      for (var e in sizesSM!) {
        ksize = '$ksize${'sm:${e.className}'} ';
      }
    }

    if (sizesMD != null) {
      for (var e in sizesMD!) {
        ksize = '$ksize${'md:${e.className}'} ';
      }
    }

    if (sizesLG != null) {
      for (var e in sizesLG!) {
        ksize = '$ksize${'lg:${e.className}'} ';
      }
    }

    yield div(attributes: attributes, classes: ksize, [child]);
  }
}
