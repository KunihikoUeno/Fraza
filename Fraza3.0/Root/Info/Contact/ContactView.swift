import SwiftUI
import MessageUI

struct ContactView: View {
    
    private func sendAction() {
        print("send button tapped")
    }
    
    var body: some View {
        CustomNavigationView(title: "Contact us") {
            VStack(spacing: 0) {
                Text("We love to hear your opinions on our app!\nPlease send us your thoughts.")
                    .font(.custom("HelveticaNeue-Light", size: 16))
                    .foregroundColor(.textColor)
                    .multilineTextAlignment(.center)
                    .lineSpacing(6)
                    .padding(.bottom, 15)
                Button(action: {
                    sendAction()
                }) {
                    Image("send")
                }
                .padding(.bottom, 5)
            }
        }
    }
    
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
