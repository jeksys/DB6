//  DB6Loader.swift
//
//  Created by Eugene Yagrushkin on 2017-05-05.
//  Copyright © 2017 EYELabs. All rights reserved.
//

import Foundation

class DB6ThemeLoader {
    
    var `default`: DB6Theme?
    var themes: [DB6Theme] = [DB6Theme]()
    
    init(themeFilename filename: String) {
        let filePath = Bundle.main.path(forResource: filename, ofType: "plist")
        let dictionary = NSDictionary(contentsOfFile: filePath!)!

        //TODO: fix that part, load plist via property list serialization
//        if let fileUrl = Bundle.main.url(forResource: filename, withExtension: "plist"),
////            let data = try? Data(contentsOf: fileUrl) {
////            if let dictionary = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? [[String: Any]] {
//////                print(dictionary)
////            }
////            if let dictionary = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? [[String: String]] {
//////                print(dictionary)
////            }
//        }
        
        for oneKey in dictionary.allKeys {
            if let key = oneKey as? String{
                if let themeDictionary = dictionary[key] as? [String: Any]{
                    let theme = DB6Theme(fromDictionary: themeDictionary)
                    if key.lowercased() == "default" {
                        self.default = theme
                        DB6Theme.default = theme
                    }
                    theme.name = key
                    themes.append(theme)
                }
            }
        }
        
    }
    
    func themeNamed(themeName: String) -> DB6Theme? {
        for oneTheme in themes {
            if themeName == oneTheme.name {
                return oneTheme
            }
        }
        return nil
    }
}
