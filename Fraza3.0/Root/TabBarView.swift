import SwiftUI

struct TabBarView: View {
    
    @State private var selection = SelectedTab.home
    
    private enum SelectedTab: Hashable {
        case home
        case search
        case favorite
        case info
    }
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem({
                    Image(selection == SelectedTab.home ? "red-home" : "blue-home")
                        .resizable()
                    Text("Home")
                })
                .tag(SelectedTab.home)
            SearchView()
                .tabItem({
                    Image(selection == SelectedTab.search ? "red-search" : "blue-search")
                        .resizable()
                    Text("Search")
                })
                .tag(SelectedTab.search)
            FavoriteView()
                .tabItem({
                    Image(selection == SelectedTab.favorite ? "red-heart" : "blue-heart")
                        .resizable()
                    Text("Favorite")
                })
                .tag(SelectedTab.favorite)
            InfoView()
                .tabItem({
                    Image(selection == SelectedTab.info ? "red-info" : "blue-info")
                        .resizable()
                    Text("Info")
                })
                .tag(SelectedTab.info)
        }
        .accentColor(.red)
    }
    
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
