import SwiftUI

struct PhraseDefaultView: View {
    
    let phrase: Phrase
    
    init(_ phrase: Phrase) {
        self.phrase = phrase
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("\(phrase.title)")
                .font(.custom("HelveticaNeue-Light", size: 15))
                .foregroundColor(.textColor)
                .padding([.top, .bottom], 18)
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
        let phrase = Phrase(title: "Yes/No", phrase: "Да・Нет", pronunciation: "Da・Niet", audio: "yes-no")
        PhraseDefaultView(phrase)
    }
}
