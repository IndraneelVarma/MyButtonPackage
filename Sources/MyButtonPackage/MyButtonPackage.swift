
import SwiftUI

struct CustomButton: View {
    let title: String
    let color: Color
    let size: CGFloat
    let action: () -> Void
    
    var body: some View {
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
