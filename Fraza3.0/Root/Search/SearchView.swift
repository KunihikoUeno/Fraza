import SwiftUI

struct SearchView: View {
    
    @State private var searchWord = ""
    
    var body: some View {
        let phrases = DataManager.shared.fetchData(type: Phrase.self, fileName: "Phrases")
        let filteredPhrases = searchWord.count > 0
            ? phrases.filter {
                $0.title.lowercased().contains(searchWord.lowercased())
            }
            : phrases
        
        CustomNavigationView(title: "Search") {
            VStack(spacing: 0) {
                SearchBarView(searchWord: $searchWord)
                PhraseListView(filteredPhrases)
            }
        }
    }
    
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
