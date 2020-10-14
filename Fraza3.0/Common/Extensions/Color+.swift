import SwiftUI

extension Color {
    
    static let customRed = Color(hex: 0xED6659)
    static let customBlue = Color(hex: 0x3399DB)
    static let customGray = Color(hex: 0xE6E6E6)
    static let textColor = Color(hex: 0x666666)
    static let listTextColor = Color(hex: 0x4F4F4F)
    static let phraseCellBackground = Color(hex: 0xE9F6FB)
    static let searchBarTextFieldBackground = Color(hex: 0xDADADC)
    
    private init(hex rgbValue: UInt64) {
        let red = (rgbValue & 0xff0000) >> 16
        let green = (rgbValue & 0xff00) >> 8
        let blue = rgbValue & 0xff
        self.init(red: Double(red) / 0xff, green: Double(green) / 0xff, blue: Double(blue) / 0xff)
    }
    
}
