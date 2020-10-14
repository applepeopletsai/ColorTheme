//
//  UIView+Theme.swift
//  ColorThemeDemo
//
//  Created by Daniel on 2019/11/19.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ThemeView: UIView {
    
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
        self.tintColor = currentTheme.tintColor
        self.backgroundColor = currentTheme.backgroundColor
    }
}
