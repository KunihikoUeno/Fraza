import SwiftUI

struct CategoryView: View {
    
    private let categoryId: Int
    private let title: String
    private var phrases: [Phrase] = []
    
    init(categoryId: Int, title: String) {
        self.categoryId = categoryId
        self.title = title
        phrases = DataManager.shared.fetchData(type: Phrase.self, fileName: "Phrases")
            .filter { $0.categoryId == categoryId + 1 }
    }
    
    var body: some View {
        CustomNavigationView(title: title) {
            PhraseListView(phrases)
        }
    }
    
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(categoryId: 1, title: "Basic Words")
    }
}
