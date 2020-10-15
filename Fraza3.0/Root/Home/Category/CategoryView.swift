import SwiftUI

struct CategoryView: View {
    
    private let categoryId: Int
    private let title: String
    private var phrases: [Phrase] = []
    @Environment(\.presentationMode) var presentationMode
    
    init(categoryId: Int, title: String) {
        self.categoryId = categoryId
        self.title = title
        phrases = DataManager.fetchData(type: Phrase.self, fileName: "Phrases")
            .filter { $0.categoryId == categoryId + 1 }
    }
    
    var body: some View {
        PhraseListView(phrases)
            .navigationBarTitle(title, displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("< Back")
                    .font(.custom("HelveticaNeue-Light", size: 16))
            })
    }
    
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(categoryId: 1, title: "Basic Words")
    }
}
