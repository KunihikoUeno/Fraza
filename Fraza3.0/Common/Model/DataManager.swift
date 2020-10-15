import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    func fetchData<T: Decodable>(type: T.Type, fileName: String) -> [T] {
        do {
            guard let filepath = Bundle.main.url(forResource: fileName, withExtension: "plist") else { return [] }
            let data = try Data(contentsOf: filepath)
            return try PropertyListDecoder().decode([T].self, from: data)
        } catch {
            fatalError("Error occured with \(fileName).plist: \(error.localizedDescription)")
        }
    }
    
}
