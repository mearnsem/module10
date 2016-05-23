//
//  SettingTableViewCell.swift
//  SettingsPrep
//
//  Created by Emily Mearns on 5/23/16.
//  Copyright © 2016 Falcone Development. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    @IBOutlet var settingImageView: UIImageView!
    @IBOutlet var label: UITextField!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    weak var delegate: SettingCellDelegate?
    var setting: Setting?
    
    @IBAction func settingSwitchChanged(sender: AnyObject) {
        delegate?.settingSwitchValueChanged(self, selected: settingSwitch.on)
    }
    
    //cleans up cellforrowatindexpath
    
    func updateCellWithSetting(setting: Setting) {
        self.setting = setting
        settingImageView.image = setting.image
        label.text = setting.name
        settingSwitch.on = setting.isSet
        if setting.isSet {
            backgroundColor = .magentaColor()
        } else {
            backgroundColor = .whiteColor()
        }
    }
}

protocol SettingCellDelegate: class {
    func settingSwitchValueChanged(cell: SettingTableViewCell, selected: Bool)
}