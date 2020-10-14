import SwiftUI

struct InfoListView: View {
    
    enum InfoListItem: String, CaseIterable {
        case rate = "Rate this App"
        case feedback = "Feedback & Help"
        case contact = "Contact us"
    }
    
    private func rateAction() {
        guard let url = URL(string : "itms-apps://itunes.apple.com/app/id1319113132") else { return }
        UIApplication.shared.open(url, options: [:])
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(InfoListItem.allCases, id: \.self) { item in
                if case InfoListItem.rate = item {
                    InfoListItemView(title: "\(item.rawValue)")
                        .onTapGesture { rateAction() }
                } else {
                    NavigationLink(destination: ContactView()) {
                        InfoListItemView(title: "\(item.rawValue)")
                    }
                }
            }
        }
    }
    
}

struct InfoListView_Previews: PreviewProvider {
    static var previews: some View {
        InfoListView()
    }
}
