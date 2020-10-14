//
//  UIVIewController+Theme.swift
//  ColorThemeDemo
//
//  Created by Daniel on 2019/11/19.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ThemeViewController: UIViewController {
    override func loadView() {
        super.loadView()
        self.addThemeChangeNotification()
    }
    
    deinit {
        self.removeThemeChangeNotification()
    }
    
    override func themeChanged() {
        super.themeChanged()
        
        let currentTheme = ThemeManager.shared.currentTheme
        self.view.backgroundColor = currentTheme.backgroundColor
        self.view.tintColor = currentTheme.tintColor
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        ThemeManager.shared.switchUserInterfaceStyle(to: traitCollection.userInterfaceStyle)
    }
}

