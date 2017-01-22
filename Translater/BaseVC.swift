//
//  BaseVC.swift
//  Translater
//
//  Created by Alexey on 1/22/17.
//  Copyright © 2017 Alexey. All rights reserved.
//

import UIKit

class BaseVC: UIViewController {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
