//
//  Setting.swift
//  SettingsPrep
//
//  Created by Emily Mearns on 5/23/16.
//  Copyright © 2016 Falcone Development. All rights reserved.
//

import UIKit

class Setting {
    let name: String
    var isSet: Bool
    let image: UIImage?
    
    init(name: String, isSet: Bool = false, image: UIImage?) {
        self.name = name
        self.isSet = isSet
        self.image = image
    }
}