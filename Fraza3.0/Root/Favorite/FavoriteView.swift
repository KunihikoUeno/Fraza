import SwiftUI

struct FavoriteView: View {
    var body: some View {
        CustomNavigationView(title: "Favorite") {
            Text("Tap the heart icon\nunder the play button\nto make your favorite list.")
                .font(.custom("HelveticaNeue", size: 17))
                .foregroundColor(.textColor)
                .multilineTextAlignment(.center)
                .lineSpacing(8)
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
