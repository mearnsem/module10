//
//  SettingsController.swift
//  SettingsPrep
//
//  Created by Emily Mearns on 5/23/16.
//  Copyright © 2016 Falcone Development. All rights reserved.
//

import UIKit

class SettingsController {
    static let sharedController = SettingsController()
    var mySettings = [Setting]()
    
    init() {
        self.mySettings = mockSettings()
    }
    
    func settingChanged(setting: Setting, selected: Bool) {
        setting.isSet = selected 
    }
    
    func mockSettings() -> [Setting] {
        let music = Setting(name: "Music", isSet: true, image: UIImage(named: "music"))
        let apps = Setting(name: "Apps", image: UIImage(named: "apps"))
        let books = Setting(name: "Books", image: UIImage(named: "books"))
        let updates = Setting(name: "Updates", isSet: true, image: UIImage(named: "apps"))
        return [music, apps, books, updates]
    }
}