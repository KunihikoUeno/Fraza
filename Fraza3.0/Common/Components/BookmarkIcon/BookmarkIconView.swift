import SwiftUI

struct BookmarkIconView: View {
    
    @State var isBookmarked: Bool
    
    var body: some View {
        Button(action: {
            isBookmarked = !isBookmarked
        }) {
            Image(isBookmarked ? "red-favorite" : "grey-favorite")
        }
    }
    
}

struct BookmarkIconView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkIconView(isBookmarked: false)
    }
}
