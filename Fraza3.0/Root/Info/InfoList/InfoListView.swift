import SwiftUI

struct InfoListView: View {
    
    enum InfoListItem: String, CaseIterable {
        case rate = "Rate this App"
        case feedback = "Feedback & Help"
        case contact = "Contact us"
    }
    
    private func tapDetected(_ item: InfoListItem) {
        switch item {
        case .rate:
            print("rate tapped")
        case .feedback:
            print("feedback tapped")
        case .contact:
            print("contact tapped")
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(InfoListItem.allCases, id: \.self) { item in
                InfoListItemView(title: "\(item.rawValue)")
                    .onTapGesture { tapDetected(item) }
            }
        }
    }
}

struct InfoListView_Previews: PreviewProvider {
    static var previews: some View {
        InfoListView()
    }
}
