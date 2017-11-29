//
//  DB6Extensions.swift
//  DB6Demo
//
//  Created by Eugene Yagrushkin on 2017-05-05.
//  Copyright © 2017 EYELabs. All rights reserved.
//

import UIKit

@IBDesignable extension UIView{
    @IBInspectable var style: String?{
        get {
            return nil
        }
        set{
            if let key = newValue{
                DB6Theme.default?.apply(view: self, key: key)
            }
        }
    }
}
