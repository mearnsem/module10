//
//  SettingsViewController.swift
//  Settings
//
//  Created by Emily Mearns on 5/16/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDataSource, SettingCellDelegate {

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Table view data source methods
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsController.sharedInstance.settings.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("settingCell", forIndexPath: indexPath) as? SettingTableViewCell
        
        //Setup cell 
        let setting = SettingsController.sharedInstance.settings[indexPath.row]
        cell?.setupCellWithSetting(setting)
        cell?.delegate = self
        return cell ?? UITableViewCell()
    }
    
    func settingValueChanged(cell: SettingTableViewCell, isOn: Bool) {
        guard let setting = cell.setting,
            cellIndexPath = tableView.indexPathForCell(cell) else {
                return
        }
        SettingsController.sharedInstance.updateWithSettingSelection(setting, isOn: isOn)
        tableView.reloadRowsAtIndexPaths([cellIndexPath], withRowAnimation: .Automatic)
    }
}
