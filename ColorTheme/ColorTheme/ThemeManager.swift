//
//  ThemeManager.swift
//  ColorThemeDemo
//
//  Created by Daniel on 2019/11/18.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

let ThemeChangedKey                     = "ThemeChangedKey"

private let ThemeKey                    = "ThemeTypeKey"
private let UserInterfaceStyleKey       = "UserInterfaceStyleKey"

class ThemeManager {
    static let shared = ThemeManager()
    
    private(set) var userInterfaceStyle: UIUserInterfaceStyle {
        get {
            return UIUserInterfaceStyle(rawValue: UserDefaults.standard.integer(forKey: UserInterfaceStyleKey)) ?? .unspecified
        }
        set {
            UserDefaults.standard.set(newValue.rawValue, forKey: UserInterfaceStyleKey)
        }
    }
    
    private(set) var currentThemeType: Theme {
        get {
            return Theme(rawValue: UserDefaults.standard.integer(forKey: ThemeKey)) ?? .LightTheme
        }
        set {
            UserDefaults.standard.set(newValue.rawValue, forKey: ThemeKey)
        }
    }
    
    var currentTheme: ThemeProtocol {
        get {
            switch currentThemeType {
            case .LightTheme:           return LightTheme()
            case .DarkTheme:            return DarkTheme()
            case .CustomTheme1:         return CustomTheme1()
            case .CustomTheme2:         return CustomTheme2()
            }
        }
    }
    
    func switchTheme(to theme: Theme) {
        if self.currentThemeType == theme { return }
        self.currentThemeType = theme
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: ThemeChangedKey), object: nil)
    }
    
    func switchUserInterfaceStyle(to userInterfaceStyle: UIUserInterfaceStyle) {
        if self.userInterfaceStyle == userInterfaceStyle { return }
        self.userInterfaceStyle = userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            print("UserInterfaceStyle is dark")
        } else {
            print("UserInterfaceStyle is light")
        }
    }
}
