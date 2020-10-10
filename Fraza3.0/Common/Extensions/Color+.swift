import SwiftUI

extension Color {
    
    static let customRed = Color(hex: 0xED6659)
    static let customBlue = Color(hex: 0x3399DB)
    static let customGray = Color(hex: 0xE6E6E6)
    static let textColor = Color(hex: 0x666666)
    
    private init(hex rgbValue: UInt64) {
        let red = (rgbValue & 0xff0000) >> 16
        let green = (rgbValue & 0xff00) >> 8
        let blue = rgbValue & 0xff
        self.init(red: Double(red) / 0xff, green: Double(green) / 0xff, blue: Double(blue) / 0xff)
    }
    
}
