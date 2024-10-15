import SwiftUI

public struct CustomButton: View {
    let title: String
    let color: Color
    let size: CGFloat
    let action: () -> Void
    
    public init(title: String, color: Color, size: CGFloat, action: @escaping () -> Void) {
        self.title = title
        self.color = color
        self.size = size
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .padding()
                .frame(height: size)
                .background(color)
                .cornerRadius(size / 4)
        }
    }
}
