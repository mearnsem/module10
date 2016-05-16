//
//  Setting.swift
//  Settings
//
//  Created by Emily Mearns on 5/16/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

import UIKit

class Setting {
    var image: UIImage?
    let name: String
    var isSet: Bool
    
    init(image: UIImage?, name: String, isSet: Bool) {
        self.image = image
        self.name = name
        self.isSet = isSet
    }
}