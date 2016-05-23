//
//  SettingsController.swift
//  Settings
//
//  Created by Emily Mearns on 5/16/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

import UIKit

class SettingsController {
    
    static let sharedInstance = SettingsController()
    
    var settings: [Setting]
    init () {
        self.settings = []
        self.settings = mockSettings()
    }
    
    func mockSettings() -> [Setting] {
        let music = Setting(image: UIImage(named: "music"), name: "Music", isSet: false)
        let apps = Setting(image: UIImage(named: "apps"), name: "Apps", isSet: true)
        let books = Setting(image: UIImage(named: "books"), name: "Books", isSet: false)
        let updates = Setting(image: UIImage(named: "apps"), name: "Updates", isSet: false)
        
        return [music, apps, books, updates]
    }
    
    func updateWithSettingSelection(setting: Setting, isOn: Bool) {
        setting.isSet = isOn
    }
}








