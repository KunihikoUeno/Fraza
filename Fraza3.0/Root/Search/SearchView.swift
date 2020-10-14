import SwiftUI

struct SearchView: View {
    
    @State private var searchWord = ""
    
    var body: some View {
        CustomNavigationView(title: "Search") {
            VStack(spacing: 0) {
                SearchBarView(searchWord: $searchWord)
                PhraseListView(phraseData, searchWord: $searchWord)
            }
        }
    }
    
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
