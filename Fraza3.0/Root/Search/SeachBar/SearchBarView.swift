import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchWord: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.customGray)
            HStack(spacing: 0) {
                Image("search")
                    .padding(.trailing, 5)
                TextField("Search", text: $searchWord)
                    .font(.custom("HelveticaNeue-Light", size: 14))
                    .padding(5)
                if searchWord.count > 0 {
                    Button(action: {
                        searchWord = ""
                    }) {
                        Image("clear")
                    }
                    .padding(.leading, 5)
                }
            }
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.horizontal, 10)
        }
        .frame(height: 60)
    }
    
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchWord: .constant(""))
    }
}
