import SwiftUI

struct PhraseSelectedView: View {
    
    let phrase: Phrase
    
    init(_ phrase: Phrase) {
        self.phrase = phrase
    }
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .top,spacing: 0) {
                Rectangle()
                    .fill(Color.customBlue)
                    .frame(width: 3)
                    .padding(.trailing, 15)
                VStack(alignment: .leading, spacing: 0) {
                    Text("\(phrase.title)")
                        .padding(.bottom, 10)
                    Text("\(phrase.phrase)")
                }
                .padding([.top, .bottom], 18)
                Spacer()
                VStack(alignment: .leading, spacing: 0) {
                    Button(action: {
                        print("play button is tapped")
                    }) {
                        Image("play")
                    }
                    .padding(.leading, 1)
                    .padding(.bottom, 10)
                    Button(action: {
                        print("favorite button is tapped")
                    }) {
                        Image("grey-favorite")
                    }
                }
                .padding([.top, .bottom], 18)
                .padding(.trailing, 15)
            }
            .padding(.zero)
            Divider()
                .background(Color.customGray)
        }
        .background(Color.phraseCellBackground)
    }
    
}

struct PhraseSelectedView_Previews: PreviewProvider {
    static var previews: some View {
        let phrase = Phrase(title: "Yes/No", phrase: "Да・Нет", pronunciation: "Da・Niet", audio: "yes-no")
        PhraseSelectedView(phrase)
    }
}

