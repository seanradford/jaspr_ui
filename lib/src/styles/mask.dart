enum Mask {
  squircle('mask mask-squircle'),
  hexagon('mask mask-hexagon'),
  triangle('mask mask-triangle');

  const Mask(this.className);
  final String className;
}
