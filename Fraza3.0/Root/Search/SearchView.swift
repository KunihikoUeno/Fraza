import SwiftUI

struct SearchView: View {
    
    @State private var searchWord = ""
    
    var body: some View {
        let flattenPhraseData = phraseData.flatMap { $0 }
        let newPhraseData = searchWord.count > 0
            ? flattenPhraseData.filter {
                $0.title.lowercased().contains(searchWord.lowercased())
            }
            : flattenPhraseData
        
        CustomNavigationView(title: "Search") {
            VStack(spacing: 0) {
                SearchBarView(searchWord: $searchWord)
                PhraseListView(newPhraseData)
            }
        }
    }
    
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
