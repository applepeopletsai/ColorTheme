//
//  NSObject+Theme.swift
//  ColorThemeDemo
//
//  Created by Daniel on 2019/11/19.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

@objc protocol ThemeChagneProtocol {
    @objc func themeChanged()
}

extension NSObject: ThemeChagneProtocol {
    
    func addThemeChangeNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(themeChanged), name: NSNotification.Name(ThemeChangedKey), object: nil)
        themeChanged()
    }
    
    func removeThemeChangeNotification() {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: ThemeChangedKey), object: nil)
    }

    @objc func themeChanged() {}
}

