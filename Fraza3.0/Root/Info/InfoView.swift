import SwiftUI

struct InfoView: View {
    var body: some View {
        CustomNavigationView(title: "Info") {
            VStack(spacing: 0) {
                Rectangle()
                    .fill(Color.customGray)
                    .frame(height: 20)
                InfoListView()
                ZStack(alignment: .center) {
                    Rectangle()
                        .fill(Color.customGray)
                        .frame(height: 32)
                    Text("About this App")
                        .font(.custom("HelveticaNeue", size: 13))
                        .foregroundColor(.textColor)
                }
                CreditView()
                    .padding(.top, 30)
                    .padding(.trailing, 3)
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
