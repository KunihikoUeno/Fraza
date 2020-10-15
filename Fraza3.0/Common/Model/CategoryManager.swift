import Foundation

class CategoryManager {
    
    static let shared = CategoryManager()
    
    private init() {}
    
    func fetchData() -> [Category] {
        do {
            guard let filepath = Bundle.main.url(forResource: "Categories", withExtension: "plist") else { return [] }
            let data = try Data(contentsOf: filepath)
            return try PropertyListDecoder().decode([Category].self, from: data)
        } catch {
            fatalError("Error occured with Categories.plist: \(error.localizedDescription)")
        }
    }
    
}
