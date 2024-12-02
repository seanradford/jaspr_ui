import 'package:jaspr/jaspr.dart';

import '../../colors/background_colors.dart';
import '../../sizes/sizes.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class Container extends StatelessComponent {
  final List<Component> children;

  final PaddingSize? padding;
  final BackgroundColor? backgroundColor;

  Container(this.children,
      {this.padding = PaddingSize.p4, this.backgroundColor});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes:
          'container mx-auto ${padding?.className ?? ''} ${backgroundColor?.className ?? ''}',
      children,
    );
  }
}
