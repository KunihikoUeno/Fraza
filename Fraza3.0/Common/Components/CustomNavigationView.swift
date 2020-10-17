import SwiftUI

struct CustomNavigationView<Content>: View where Content: View {
    
    let title: String
    let content: () -> Content
    
    init(title: String, @ViewBuilder content: @escaping () -> Content) {
        self.title = title
        self.content = content
        setupNavigatioinBarStyle()
    }
    
    private func setupNavigatioinBarStyle() {
        UINavigationBar.appearance().isTranslucent = true
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().barStyle = UIBarStyle.black
        UINavigationBar.appearance().barTintColor = UIColor.customBlue
        if let font = UIFont(name: "HelveticaNeue-Light", size: 18) {
            UINavigationBar.appearance().titleTextAttributes = [.font : font]
        }
    }
    
    var body: some View {
        NavigationView {
            content()
                .navigationBarTitle(title)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
    
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView(title: "Title") {
            Text("Some Content")
        }
    }
}
