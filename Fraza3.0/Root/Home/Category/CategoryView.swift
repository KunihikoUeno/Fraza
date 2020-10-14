import SwiftUI

struct CategoryView: View {
    
    private let categoryId: Int
    private let title: String
    
    init(categoryId: Int, title: String) {
        self.categoryId = categoryId
        self.title = title
        setupPhraseData()
    }
    
    var body: some View {
        CustomNavigationView(title: title) {
            PhraseListView(phraseData[categoryId])
        }
    }
    
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(categoryId: 1, title: "Basic Words")
    }
}
