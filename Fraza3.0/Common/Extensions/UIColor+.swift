import UIKit

extension UIColor {
    
    /*
     ＝＝＝＝＝＝＝＝＝＝＝＝＝＝
     【アンソニーのコードを参考にする】
     プロダクション用のコードでは無いので以下の初期化関数を解析したメモをコードに残す。
     ＝＝＝＝＝＝＝＝＝＝＝＝＝＝
     
     RGBカラーは６桁の１６進数で表される。
     以下は赤を例にする。
     
     １）
     まず入力値に対してBitwise AND Operatorで一致した桁数のバイナリを取得する。
     (rgbValue & 0xff0000)
     
     ２）
     ６桁の１６進数の最大値（0xffffff）をバイナリにすると「111111111111111111111111」。
     つまり24ビットで表される。
     
     赤の場合、当該の２桁の１６進数は６桁のうちの最初の２桁（バイナリだと最初の８桁）となる。
     その値はバイナリだとこのようになる「111111110000000000000000」（末尾にある16桁のバイナリはこの例では0で表す）。
     
     当該値のみを２４桁のバイナリから取得するためにはBitwise Right Shift Operators（>>）を使う。
     16ビット分シフトすると「000000000000000011111111」になり赤の値のみを取得することができる。
     
     上記の処理が行われた値が１０進数で定数redにアサインされる。
     
     ３）
     最終的には取得したRGBの各値でUIColorの初期化関数「init(red:green:blue:alpha:)」を呼んで色を生成する。
     ２の過程で得たのは１０進数を１６進数に変換する処理を「CGFloat(red) / 0xff」で行う。
     
     UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
     上記の形で初期化を行うため「CGFloat(red) / 0xff」と記述する。
     
     CGFloat(red) はredの値をCGFloatへのキャストを行い、0xffは２桁の１６進数の最大値「255.0」として処理される。
     */
    
    private convenience init(hex rgbValue: UInt64) {
        let red = (rgbValue & 0xff0000) >> 16
        let green = (rgbValue & 0xff00) >> 8
        let blue = rgbValue & 0xff
        
        self.init(
            red: CGFloat(red) / 0xff,
            green: CGFloat(green) / 0xff,
            blue: CGFloat(blue) / 0xff,
            alpha: 1
        )
    }
    
    static let customRed = UIColor(hex: 0xED6659)
    static let customBlue = UIColor(hex: 0x3399DB)
    static let customGray = UIColor(hex: 0xE6E6E6)
    static let textColor = UIColor(hex: 0x666666)
    static let listTextColor = UIColor(hex: 0x4F4F4F)
    static let phraseCellBackground = UIColor(hex: 0xE9F6FB)
    
}
