import SwiftUI

struct BookmarkIconView: View {
    
    let phraseId: Int
    @ObservedObject var bookmarks = Bookmarks()
    
    var body: some View {
        Button(action: {
            if bookmarks.mylist.contains(phraseId) {
                bookmarks.mylist = bookmarks.mylist.filter { $0 != phraseId }
            } else {
                bookmarks.mylist.append(phraseId)
            }
        }) {
            Image(bookmarks.mylist.contains(phraseId) ? "red-favorite" : "grey-favorite")
        }
    }
    
}

struct BookmarkIconView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkIconView(phraseId: 1)
    }
}
