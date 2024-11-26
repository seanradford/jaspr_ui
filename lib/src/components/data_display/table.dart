import 'package:jaspr/jaspr.dart';

/// A customizable table component for creating responsive and styled tables.
///
/// This class allows creating tables with optional features like:
/// - Zebra striping
/// - Row and column pinning
/// - Size variations
///
/// Example usage:
/// ```dart
/// Table(
///   head: THead(children: [...]),
///   body: TBody(children: [...]),
///   zebra: true,
///   size: TableSize.md
/// )
/// ```
class Table extends StatelessComponent {
  /// The table header component
  final THead head;

  /// The table body component
  final TBody body;

  /// Enable zebra striping for alternating row colors
  final bool zebra;

  /// Pin rows to maintain visibility during scrolling
  final bool pinRows;

  /// Pin columns to maintain visibility during scrolling
  final bool pinCols;

  /// Table size configuration
  final TableSize? size;

  /// Constructs a Table component
  ///
  /// [head] is a required header component
  /// [body] is a required body component
  /// [zebra] optionally enables striped rows (default is false)
  /// [pinRows] optionally pins rows (default is false)
  /// [pinCols] optionally pins columns (default is false)
  /// [size] optionally sets the table size
  Table({
    super.key,
    required this.head,
    required this.body,
    this.zebra = false,
    this.pinRows = false,
    this.pinCols = false,
    this.size,
  });

  @override
  Iterable<Component> build(Object context) sync* {
    yield DomComponent(
      tag: 'table',
      classes: 'table '
          '${size != null ? '${size!.className} ' : ''}'
          '${zebra == true ? 'table-zebra ' : ''} '
          '${pinCols == true ? 'table-pin-cols ' : ''}'
          '${pinRows == true ? 'table-pin-rows ' : ''}',
      children: [
        head,
        body,
      ],
    );
  }
}

/// Represents the table header (<thead>) component
///
/// Used to define the header row(s) of a table
class THead extends StatelessComponent {
  /// List of header row components
  final List<Component> children;

  /// Constructs a table header
  ///
  /// [children] contains the header row(s)
  THead({super.key, required this.children});

  @override
  Iterable<Component> build(Object context) sync* {
    yield DomComponent(
      tag: 'thead',
      children: children,
    );
  }
}

/// Represents the table body (<tbody>) component
///
/// Used to define the main content rows of a table
class TBody extends StatelessComponent {
  /// List of body row components
  final List<Component> children;

  /// Constructs a table body
  ///
  /// [children] contains the data rows
  TBody({super.key, required this.children});

  @override
  Iterable<Component> build(Object context) sync* {
    yield DomComponent(
      tag: 'tbody',
      children: children,
    );
  }
}

/// Represents a table row (<tr>) component
///
/// Automatically wraps child components in <td> elements
class TRow extends StatelessComponent {
  /// List of cell components for this row
  final List<Component> children;

  /// Constructs a table row
  ///
  /// [children] contains the cell components
  TRow({super.key, required this.children});

  @override
  Iterable<Component> build(Object context) sync* {
    yield DomComponent(
      tag: 'tr',
      children: List.generate(
        children.length,
        (i) => DomComponent(
          tag: 'td',
          child: children[i],
        ),
      ),
    );
  }
}

/// Defines table size variations
///
/// Provides predefined CSS classes for different table sizes
enum TableSize {
  /// Large table size
  lg('table-lg'),

  /// Medium table size (default)
  md('table-md'),

  /// Small table size
  sm('table-sm'),

  /// Extra small table size
  xs('table-xs');

  /// Constructor that takes a CSS class name
  const TableSize(this._className);

  /// Internal CSS class name
  final String _className;

  /// Retrieves the CSS class name for the table size
  String get className => _className;
}
