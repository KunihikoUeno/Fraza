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
            rateAction()
        case .feedback:
            print("feedback tapped")
        case .contact:
            print("contact tapped")
        }
    }
    
    private func rateAction() {
        guard let url = URL(string : "itms-apps://itunes.apple.com/app/id1319113132") else { return }
        UIApplication.shared.open(url, options: [:])
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
