/*
  Conditional view modifier.
  Example

  @State var colorIsRed: Bool = false

  Text("Color")
    .conditional(colorIsRed){ view in
      view.background(Color.red)
    }

*/

extension View {
    @ViewBuilder
    func conditional<T: View>(_ condition: Bool, transform: (Self) -> T) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
