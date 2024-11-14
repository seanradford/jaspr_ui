// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:jaspr/jaspr.dart';

class ButtonWithBadge extends StatelessComponent {
  final String total;
  final String title;

  const ButtonWithBadge({
    required this.total,
    required this.title,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield raw('''
<button class="btn">
  $title
  <div class="badge badge-secondary">$total</div>
</button>
''');
  }
}
