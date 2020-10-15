import SwiftUI

struct PhraseListView: View {
    
    let phraseData: [Phrase]
    @State var activeItem: Int?
    
    init(_ phraseData: [Phrase]) {
        self.phraseData = phraseData
    }
    
    private func tapDetected(_ index: Int) {
        activeItem = index
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                ForEach(0..<phraseData.count, id: \.self) { index in
                    let phrase = phraseData[index]
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

struct PhraseListView_Previews: PreviewProvider {
    static var previews: some View {
        let phrase = Phrase(id: 1, categoryId: 1, title: "Yes/No", phrase: "Да・Нет", pronunciation: "Da・Niet", audio: "yes-no")
        PhraseListView([phrase])
    }
}
