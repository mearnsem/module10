//
//  SettingsViewController.swift
//  SettingsPrep
//
//  Created by Emily Mearns on 5/23/16.
//  Copyright © 2016 Falcone Development. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsController.sharedController.mySettings.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("settingCell", forIndexPath: indexPath) as? SettingTableViewCell
        
        let setting = SettingsController.sharedController.mySettings[indexPath.row]
        cell?.updateCellWithSetting(setting)
        cell?.delegate = self
        return cell ?? SettingTableViewCell()
    }
}

extension SettingsViewController: SettingCellDelegate {
    func settingSwitchValueChanged(cell: SettingTableViewCell, selected: Bool) {
        guard let setting = cell.setting, indexPath = tableView.indexPathForCell(cell) else { return }
        SettingsController.sharedController.settingChanged(setting, selected: selected)
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    }
}