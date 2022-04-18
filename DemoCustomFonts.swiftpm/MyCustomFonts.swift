/* MIT License
Copyright (c) 2022 Alessandra Luana Nascimento Pereira
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
*/

import SwiftUI

/// A type for your custom fonts.
///
/// When you use this type, don't forget to add
/// a case for each custom font you need as given in the example.
enum MyCustomFonts: String, CaseIterable {
    
    //e.g, the fonts below:
    case kalamBold = "Kalam-Bold.ttf"
    case moonlessSCRegular = "MoonlessSC-Regular.otf"
    case updockRegular = "Updock-Regular.ttf"
    
    var fontName: String { String(self.rawValue.dropLast(4)) }
    var fileExtension: String { String(self.rawValue.suffix(3)) }
}


struct CustomFonts {
    static func register() {
        MyCustomFonts.allCases.forEach {
            registerFont(fontName: $0.fontName,
                         fontExtension: $0.fileExtension)
        }
    }
    
    private static func registerFont(fontName: String, fontExtension: String) {

        guard let fontURL = Bundle.main.url(forResource: fontName, withExtension: fontExtension),
              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
              let font = CGFont(fontDataProvider) else {
            print("Couldn't create \(fontName) from data")
            return
        }
        
        var error: Unmanaged<CFError>?
        
        CTFontManagerRegisterGraphicsFont(font, &error)
    }
    
}

extension Font {
    static func custom(_ font: MyCustomFonts, size: CGFloat) -> Font {
        custom(font.fontName, size: size)
    }
}
