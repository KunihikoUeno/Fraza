import SwiftUI

struct InfoView: View {
    var body: some View {
        CustomNavigationView(title: "Info") {
            VStack(spacing: 0) {
                Rectangle()
                    .fill(Color.customGray)
                    .frame(height: 20)
                Spacer()
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
