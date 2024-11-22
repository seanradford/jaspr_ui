/// Defines border radius variants for rounding element corners.
///
/// This enum provides predefined border radius values that can be used
/// to apply rounded corners to elements. Each value corresponds to a specific
/// CSS border-radius class with different levels of roundness.
///
/// Example usage:
/// ```dart
/// final corners = Rounded.xl;
/// print(corners.className); // Outputs: 'rounded-xl'
/// ```
enum Rounded {
 /// Fully rounded corners that create a circular or pill shape.
 ///
 /// Uses the CSS class 'rounded-full' which sets border-radius to 9999px.
 full('rounded-full'),

 /// Extra large rounded corners.
 ///
 /// Uses the CSS class 'rounded-xl' for a more pronounced rounding effect.
 xl('rounded-xl'),

 /// Standard rounded corners.
 ///
 /// Uses the CSS class 'rounded' for a default, moderate rounding effect.
 rounded('rounded');

 /// Creates a [Rounded] variant with the specified CSS class name.
 const Rounded(this.className);

 /// The CSS class name associated with this border radius variant.
 final String className;
}