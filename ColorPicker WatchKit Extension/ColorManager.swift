/*
* Copyright (c) 2015 Razeware LLC
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/

import UIKit

class ColorManager {
    static let defaultManager = ColorManager()

    let availableColors = [
        UIColor(red: 0.941176471, green: 0.098039216, blue: 0.08627451, alpha: 1),
        UIColor(red: 0.984313725, green: 0.6, blue: 0, alpha: 1),
        UIColor(red: 0.952941176, green: 0.933333333, blue: 0, alpha: 1),
        UIColor(red: 0, green: 0.603921569, blue: 0.266666667, alpha: 1),
        UIColor(red: 0.215686275, green: 0.317647059, blue: 0.650980392, alpha: 1),
        UIColor(red: 0.780392157, green: 0.094117647, blue: 0.568627451, alpha: 1)
    ]
    var selectedColor: UIColor

    init() {
        selectedColor = availableColors.first!
    }
}

public extension UIColor {
    var hexString: String {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        getRed(&r, green: &g, blue: &b, alpha: nil)

        let strings: [String] = [r, g, b].map { f in
            let i = Int(f * 255.0)
            let str = NSString(format: "%2X", i).stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
            if str.characters.count == 1 {
                return "0" + str
            } else {
                return str
            }
        }

        return strings.reduce("", combine: { return $0 + $1 })
    }

    var rgbString: String {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        getRed(&r, green: &g, blue: &b, alpha: nil)
        r *= 255
        g *= 255
        b *= 255
        return "r: \(Int(r)), g: \(Int(g)), b: \(Int(b))"
    }

    var hslString: String {
        var h: CGFloat = 0
        var s: CGFloat = 0
        var l: CGFloat = 0
        getHue(&h, saturation: &s, brightness: &l, alpha: nil)
        h *= 360
        s *= 100
        l *= 100
        return "h: \(Int(h)), s: \(Int(s))%, l: \(Int(l))%"
    }
}