import SwiftUI

struct PhraseListView: View {
    
    let phraseData: [[Phrase]]
    let categoryId: Int?
    @State var activeItem: Int?
    
    init(_ phraseData: [[Phrase]], categoryId: Int? = nil) {
        self.phraseData = phraseData
        self.categoryId = categoryId
    }
    
    private func tapDetected(_ index: Int) {
        activeItem = index
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                if let categoryId = categoryId {
                    ForEach(0..<phraseData[categoryId].count) { index in
                        let phrase = phraseData[categoryId][index]
                        if let activeItem = activeItem, activeItem == index {
                            PhraseSelectedView(phrase)
                        } else {
                            PhraseDefaultView(phrase)
                                .onTapGesture { tapDetected(index) }
                        }
                    }
                } else {
                    let newPhraseData = phraseData.flatMap { $0 }
                    ForEach(0..<newPhraseData.count) { index in
                        let phrase = newPhraseData[index]
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

struct PhraseListView_Previews: PreviewProvider {
    static var previews: some View {
        let phrase = Phrase(title: "Yes/No", phrase: "Да・Нет", pronunciation: "Da・Niet", audio: "yes-no")
        PhraseListView([[phrase]], categoryId: 1)
    }
}
