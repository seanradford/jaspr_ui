// TODO : check with form action

import 'package:jaspr/jaspr.dart';

class FileInput extends StatelessComponent {
  final String? value;
  final String? name;
  final FileInputColor? color;
  final FileInputSize? size;
  final ValueChanged? onChange;
  final ValueChanged? onInput;

  FileInput({
    super.key,
    this.value,
    this.name,
    this.color,
    this.size,
    this.onChange,
    this.onInput,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield input(
      name: name,
      classes:
          'file-input file-input-bordered w-full max-w-xs ${color?.className ?? ''} ${size?.className ?? ''}',
      disabled: false,
      type: InputType.file,
      onChange: (value) => onChange?.call(value),
      onInput: (value) => onInput?.call(value),
      value: value,
      [],
    );
  }
}

enum FileInputColor {
  primary('file-input-primary'),
  secondary('file-input-secondary'),
  accent('file-input-accent'),
  neutral('file-input-neutral'),
  info('file-input-info'),
  success('file-input-success'),
  warning('file-input-warning'),
  error('file-input-error');

  const FileInputColor(this._className);
  final String _className;
  String get className => _className;
}

enum FileInputSize {
  xs('file-input-xs'),
  sm('file-input-sm'),
  md('file-input-md'),
  lg('file-input-lg');

  const FileInputSize(this._className);
  final String _className;
  String get className => _className;
}
