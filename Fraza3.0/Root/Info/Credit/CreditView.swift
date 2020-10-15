import SwiftUI

struct CreditView: View {
    var body: some View {
        HStack(spacing: 0) {
            Image("info-logo")
            VStack(alignment: .leading, spacing: 5) {
                Text("Fraza:")
                Text("Creator:")
                Text("Voice:")
            }
            .font(.custom("HelveticaNeue", size: 14))
            .foregroundColor(.textColor)
            .padding(.horizontal, 15)
            VStack(alignment: .leading, spacing: 5) {
                Text("Version 3.0")
                Text("Kunihiko Ueno")
                Text("Sokolova Anna")
            }
            .font(.custom("HelveticaNeue", size: 14))
            .foregroundColor(.textColor)
        }
    }
}

struct CreditView_Previews: PreviewProvider {
    static var previews: some View {
        CreditView()
    }
}
