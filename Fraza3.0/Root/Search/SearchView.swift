import SwiftUI

struct SearchView: View {
    
    @State private var searchWord = ""
    
    var body: some View {
        let binding = Binding<String>(
            get: {
                searchWord
            },
            set: {
                searchWord = $0
            }
        )
        
        CustomNavigationView(title: "Search") {
            VStack(spacing: 0) {
                ZStack {
                    Rectangle()
                        .fill(Color.customGray)
                    HStack(spacing: 0) {
                        Image("search")
                            .padding(.trailing, 5)
                        TextField("Search", text: binding)
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
                    .padding(.vertical, 3)
                    .padding(.horizontal, 10)
                    .background(Color.white)
                    .cornerRadius(3)
                    .padding(.horizontal, 15)
                }
                .frame(height: 60)
                Text("Search")
                Spacer()
            }
        }
    }
    
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
