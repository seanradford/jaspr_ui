import 'package:jaspr/jaspr.dart';

/// A stateless component representing a basic skeleton loading state with a fixed width and height.
class Skeleton extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'skeleton w-32 h-32', []);
  }
}

/// A stateless component representing a skeleton loading state with a rectangular content layout.
///
/// This component displays a skeleton with:
/// - A full-width rectangle at the top
/// - Three horizontal skeleton lines of varying widths
class SkeletonRectangleContent extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'flex w-52 flex-col gap-4', [
      div(classes: 'skeleton h-32 w-full', []),
      div(classes: 'skeleton h-4 w-28', []),
      div(classes: 'skeleton h-4 w-full', []),
      div(classes: 'skeleton h-4 w-full', []),
    ]);
  }
}

/// A stateless component representing a skeleton loading state with a circular avatar and text content.
///
/// This component displays a skeleton with:
/// - A circular avatar on the left
/// - Two text lines next to the avatar
/// - A full-width rectangle below
class SkeletonCircleContent extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'flex w-52 flex-col gap-4', [
      div(classes: 'flex items-center gap-4', [
        div(classes: 'skeleton h-16 w-16 shrink-0 rounded-full', []),
        div(classes: 'flex flex-col gap-4', [
          div(classes: 'skeleton h-4 w-20', []),
          div(classes: 'skeleton h-4 w-28', []),
        ]),
      ]),
      div(classes: 'skeleton h-32 w-full', []),
    ]);
  }
}
