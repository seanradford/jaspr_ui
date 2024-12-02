import 'package:jaspr/jaspr.dart';

import '../../colors/background_colors.dart';
import '../../sizes/margin_size.dart';
import '../../sizes/sizes.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class Container extends StatelessComponent {
  final List<Component> children;

  final PaddingSize? padding;
  final MarginSize? margin;
  final BackgroundColor? backgroundColor;
  final bool center;

  Container({
    this.padding = PaddingSize.p0,
    this.margin = MarginSize.m0,
    this.backgroundColor,
    this.center = false,
    required this.children,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'container '
          '${center == true ? 'justify-items-center content-center' : ''} '
          ' ${padding?.className ?? ''} '
          ' ${margin?.className ?? ''} '
          ' ${backgroundColor?.className ?? ''} ',
      children,
    );
  }
}
