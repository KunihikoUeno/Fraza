import SwiftUI
import MessageUI

struct ContactView: View {
    
    @State private var isPresented = false
    @Environment(\.presentationMode) var presentationMode
    
    private func sendAction() {
        print("send button tapped")
        
    }
    
    var body: some View {
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
        .navigationBarTitle("Contact us", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Text("< Back")
                .font(.custom("HelveticaNeue-Light", size: 16))
        })
    }
    
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
