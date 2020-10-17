import SwiftUI

struct PhraseDefaultView: View {
    
    let phrase: Phrase
    
    init(_ phrase: Phrase) {
        self.phrase = phrase
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("\(phrase.title)")
                .font(.custom("HelveticaNeue", size: 15))
                .foregroundColor(.textColor)
                .padding([.top, .bottom], 19)
                .padding([.leading, .trailing], 15)
                .listRowInsets(EdgeInsets())
            Divider()
                .background(Color.customGray)
        }
        .contentShape(Rectangle())
    }
    
}

struct PhraseDefaultView_Previews: PreviewProvider {
    static var previews: some View {
        let phrase = Phrase(id: 1, categoryId: 1, title: "Yes/No", phrase: "Да・Нет", pronunciation: "Da・Niet", audio: "yes-no")
        PhraseDefaultView(phrase)
    }
}
