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

// You can add any other public items here if needed
public struct MyButtonPackage {
    // This is optional, you can remove it if not needed
    public static func sayHello() {
        print("Hello from MyButtonPackage!")
    }
}
