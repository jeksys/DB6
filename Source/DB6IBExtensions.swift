//
//  DB6Extensions.swift
//  DB6Demo
//
//  Created by Eugene Yagrushkin on 2017-05-05.
//  Copyright © 2017 EYELabs. All rights reserved.
//

import UIKit

@IBDesignable extension UILabel{
    
    @IBInspectable var style: String?{
        get {
            return nil
        }
        set{
            if let key = newValue{
                DB6Theme.default?.update(label: self, key: key)
            }
        }
    }
}


extension UIColor{

    public func hexString(_ includeAlpha: Bool = true) -> String {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        if (includeAlpha) {
            return String(format: "#%02X%02X%02X%02X", Int(r * 255), Int(g * 255), Int(b * 255), Int(a * 255))
        } else {
            return String(format: "#%02X%02X%02X", Int(r * 255), Int(g * 255), Int(b * 255))
        }
    }
    
}
