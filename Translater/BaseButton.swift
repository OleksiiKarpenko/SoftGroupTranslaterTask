//
//  BaseButton.swift
//  Translater
//
//  Created by Alexey on 1/22/17.
//  Copyright © 2017 Alexey. All rights reserved.
//

import UIKit

class BaseButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 10
        layer.borderWidth = 2
    }
}
