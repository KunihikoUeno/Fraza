import SwiftUI

struct FavoriteView: View {
    
    var phrases: [Phrase]?
    @ObservedObject var bookmarks = Bookmarks()
    
    init() {
        self.phrases = DataManager
            .fetchData(type: Phrase.self, fileName: "Phrases")
            .filter { bookmarks.mylist.contains($0.id) }
    }
    
    var body: some View {
        CustomNavigationView(title: "Favorite") {
            if let phrases = phrases, phrases.count > 0 {
                PhraseListView(phrases)
            } else {
                Text("Tap the heart icon\nunder the play button\nto make your favorite list.")
                    .font(.custom("HelveticaNeue", size: 17))
                    .foregroundColor(.textColor)
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
            }
        }
    }
    
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
