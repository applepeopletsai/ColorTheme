//
//  UILabel+Theme.swift
//  ColorThemeDemo
//
//  Created by Daniel on 2019/11/19.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ThemeLabel: UILabel {
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
        self.backgroundColor = currentTheme.backgroundColor
        self.textColor = currentTheme.textColor
        self.font = currentTheme.font
    }
}
