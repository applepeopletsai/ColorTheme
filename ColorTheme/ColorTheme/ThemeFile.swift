//
//  ThemeFile.swift
//  ColorThemeDemo
//
//  Created by Daniel on 2019/11/18.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

enum Theme: Int {
    case LightTheme
    case DarkTheme
    case CustomTheme1
    case CustomTheme2
}

protocol ThemeProtocol {
    var textColor: UIColor { get }
    var backgroundColor: UIColor { get }
    var tintColor: UIColor { get }
    var font: UIFont { get }
    var barTinColor: UIColor { get }
    var barTitleColor: UIColor { get }
    var barTitleFont: UIFont { get }
}

extension ThemeProtocol {
    var font: UIFont { return UIFont(name: "HelveticaNeue", size: 20) ?? UIFont.systemFont(ofSize: 20) }
    var barTinColor: UIColor { return .white }
    var barTitleColor: UIColor { return .black }
    var barTitleFont: UIFont { return UIFont(name: "HelveticaNeue", size: 20) ?? UIFont.systemFont(ofSize: 20) }
}


class LightTheme: ThemeProtocol {
    var textColor: UIColor = .black
    var backgroundColor: UIColor = .white
    var tintColor: UIColor = .blue
}

class DarkTheme: ThemeProtocol {
    var textColor: UIColor = .white
    var backgroundColor: UIColor = .black
    var tintColor: UIColor = .red
    var barTinColor: UIColor = .black
    var barTitleColor: UIColor = .white
}

class CustomTheme1: ThemeProtocol {
    var textColor: UIColor = .red
    var backgroundColor: UIColor = .yellow
    var tintColor: UIColor = .green
    var barTinColor: UIColor = .yellow
    var barTitleColor: UIColor = .magenta
}

class CustomTheme2: ThemeProtocol {
    var textColor: UIColor = .green
    var backgroundColor: UIColor = .orange
    var tintColor: UIColor = .purple
    var barTinColor: UIColor = .orange
    var barTitleColor: UIColor = .blue
}


