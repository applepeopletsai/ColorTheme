//
//  UINavigationBar+Theme.swift
//  ColorThemeDemo
//
//  Created by Daniel on 2019/11/19.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ThemeNavigationBar: UINavigationBar {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addThemeChangeNotification()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.addThemeChangeNotification()
    }
    
    deinit {
        self.removeThemeChangeNotification()
    }
    
    override func themeChanged() {
        super.themeChanged()
        
        let currentTheme = ThemeManager.shared.currentTheme
        self.barTintColor = currentTheme.barTinColor
        
        if var titleTextAttributes = self.titleTextAttributes {
            titleTextAttributes[.foregroundColor] = currentTheme.barTitleColor
            titleTextAttributes[.font] = currentTheme.barTitleFont
            self.titleTextAttributes = titleTextAttributes
        } else {
            self.titleTextAttributes = [.foregroundColor:currentTheme.barTitleColor,
                                        .font:currentTheme.barTitleFont]
        }
    }
}
