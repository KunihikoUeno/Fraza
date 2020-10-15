import SwiftUI
import MessageUI

struct ContactView: View {
    
    @State private var isPresented = false
    
    private func sendAction() {
        print("send button tapped")
        
    }
    
    var body: some View {
        CustomNavigationView(title: "Contact us") {
            VStack(spacing: 0) {
                Text("We love to hear your opinions on our app!\nPlease send us your thoughts.")
                    .font(.custom("HelveticaNeue", size: 16))
                    .foregroundColor(.textColor)
                    .multilineTextAlignment(.center)
                    .lineSpacing(6)
                    .padding(.bottom, 15)
                Button(action: {
                    self.isPresented.toggle()
                }) {
                    Image("send")
                }
                .disabled(!MFMailComposeViewController.canSendMail())
                .sheet(isPresented: $isPresented, content: {
                    MailView(isShowing: self.$isPresented)
                })
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
