//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Emily Mearns on 5/16/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

import UIKit

protocol SettingCellDelegate {
    func settingValueChanged(cell: SettingTableViewCell, isOn: Bool)
}

class SettingTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets & Properties
    @IBOutlet var settingImageView: UIImageView!
    @IBOutlet var label: UILabel!
    @IBOutlet var settingSwitch: UISwitch!
    
    var setting: Setting?
    var delegate: SettingCellDelegate?
    
    func setupCellWithSetting(setting: Setting) {
        self.setting = setting
        
        settingImageView.image = setting.image
        label.text = setting.name
        settingSwitch.on = setting.isSet
        if setting.isSet {
            backgroundColor = .cyanColor()
        } else {
            backgroundColor = .whiteColor()
        }
    }
    
    //MARK: - IBActions
    @IBAction func switchValueChanged(sender: AnyObject) {
        delegate?.settingValueChanged(self, isOn: settingSwitch.on)
    }
}
