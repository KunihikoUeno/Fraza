import SwiftUI

struct CategoryView: View {
    
    private let categoryId: Int
    @State var activeItem: Int?
    
    init(categoryId: Int) {
        self.categoryId = categoryId
        setupPhraseData()
    }
    
    private func tapDetected(_ index: Int) {
        activeItem = index
    }
    
    var body: some View {
        CustomNavigationView(title: "Title") {
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
        CategoryView(categoryId: 2)
    }
}
