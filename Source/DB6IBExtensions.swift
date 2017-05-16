//
//  DB6Extensions.swift
//  DB6Demo
//
//  Created by Eugene Yagrushkin on 2017-05-05.
//  Copyright © 2017 EYELabs. All rights reserved.
//

import UIKit


//@IBDesignable extension UILabel{
//    
//    @IBInspectable override var style: String?{
//        get {
//            return nil
//        }
//        set{
//            if let key = newValue{
//                DB6Theme.default?.update(label: self, key: key)
//            }
//        }
//    }
//}

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

//@IBDesignable extension UIButton{
//    
//    @IBInspectable override var style: String?{
//        get {
//            return nil
//        }
//        set{
//            if let key = newValue{
//                DB6Theme.default?.update(button: self, key: key)
//            }
//        }
//    }
//}
