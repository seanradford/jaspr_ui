// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jaspr/jaspr.dart';

class Avatar extends StatelessComponent {
  final String url;

  const Avatar({
    required this.url,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: "avatar", [
      div(classes: "w-24 rounded-full", [img(src: url)]),
    ]);
 
  }
}
