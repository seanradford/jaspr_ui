/// Defines mask shapes for applying CSS mask effects to elements.
///
/// This enum provides a collection of predefined mask shapes that can be used
/// to clip or shape elements using CSS mask properties. Each value represents
/// a different geometric shape that can be applied as a mask.
///
/// Example usage:
/// ```dart
/// final maskShape = Mask.squircle;
/// print(maskShape.className); // Outputs: 'mask mask-squircle'
/// ```
enum Mask {
 /// A squircle-shaped mask.
 ///
 /// Creates a shape that's a blend between a square and circle,
 /// using the CSS classes 'mask mask-squircle'.
 squircle('mask mask-squircle'),

 /// A hexagon-shaped mask.
 ///
 /// Creates a six-sided polygon shape,
 /// using the CSS classes 'mask mask-hexagon'.
 hexagon('mask mask-hexagon'),

 /// A triangle-shaped mask.
 ///
 /// Creates a three-sided polygon shape,
 /// using the CSS classes 'mask mask-triangle'.
 triangle('mask mask-triangle');

 /// Creates a [Mask] with the specified CSS class name.
 const Mask(this.className);

 /// The CSS class names associated with this mask shape.
 ///
 /// Contains both the base 'mask' class and the specific shape class.
 final String className;
}