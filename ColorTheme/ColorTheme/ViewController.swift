//
//  ViewController.swift
//  ColorTheme
//
//  Created by Daniel on 2020/10/14.
//

import UIKit

class ViewController: ThemeViewController {
    
    @IBOutlet weak var button: ThemeButton!
    @IBOutlet weak var label: ThemeLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func switchTheme(_ sender: UIButton) {
        let i: Int = ThemeManager.shared.currentThemeType.rawValue + 1
        
        let t: Theme = Theme(rawValue: i) ?? .LightTheme
        
        ThemeManager.shared.switchTheme(to: t)
    }
}

