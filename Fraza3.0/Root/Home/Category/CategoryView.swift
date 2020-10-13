import SwiftUI

struct CategoryView: View {
    
    private let categoryId: Int
    private let title: String
    @State var activeItem: Int?
    
    init(categoryId: Int, title: String) {
        self.categoryId = categoryId
        self.title = title
        setupPhraseData()
    }
    
    private func tapDetected(_ index: Int) {
        activeItem = index
    }
    
    var body: some View {
        CustomNavigationView(title: title) {
            ScrollView {
                VStack(spacing: 0) {
                    ForEach(0..<phraseData[categoryId].count) { index in
                        let phrase = phraseData[categoryId][index]
                        if let activeItem = activeItem, activeItem == index {
                            PhraseSelectedView(phrase)
                        } else {
                            PhraseDefaultView(phrase)
                                .onTapGesture { tapDetected(index) }
                        }
                    }
                }
            }
        }
    }
    
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(categoryId: 1, title: "Basic Words")
    }
}
