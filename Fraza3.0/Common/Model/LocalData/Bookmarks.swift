import Foundation

class Bookmarks: ObservableObject {
    
    @Published var mylist: [Int] {
        didSet {
                UserDefaults.standard.set(mylist, forKey: "mylist")
        }
    }
    
    init() {
        self.mylist = UserDefaults.standard.object(forKey: "mylist") as? [Int] ?? []
    }
    
}
