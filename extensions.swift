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
    func conditional<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
