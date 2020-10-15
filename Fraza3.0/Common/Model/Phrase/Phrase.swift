import Foundation

struct Phrase: Decodable {
    
    let id: Int
    let categoryId: Int
    let title: String
    let phrase: String
    let pronunciation: String
    let audio: String
    
    init(
        id: Int,
        categoryId: Int,
        title: String,
        phrase: String,
        pronunciation: String,
        audio: String
    ) {
        self.id = id
        self.categoryId = categoryId
        self.title = title
        self.phrase = phrase
        self.pronunciation = pronunciation
        self.audio = audio
    }
    
}
