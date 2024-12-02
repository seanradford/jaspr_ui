enum ShadowSize {
  sm('shadow-sm'),
  md('shadow-md'),
  lg('shadow-lg'),
  xl('shadow-xl'),
  x2xl('shadow-2xl'),
  inner('shadow-inner'),
  none('shadow-none');

  const ShadowSize(this._className);
  final String _className;
  String get className => _className;
}
