//
//  OnlineVC.swift
//  Translater
//
//  Created by Alexey on 1/21/17.
//  Copyright © 2017 Alexey. All rights reserved.
//

import UIKit
import Alamofire

class OnlineVC: BaseVC, UITextFieldDelegate {
    
    @IBOutlet weak var textForTranslate: UITextField!
    @IBOutlet weak var translatedLabel: UILabel!
    
    let onlineMechanic = OnlinePart()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textForTranslate.delegate = self
        self.textForTranslate.attributedPlaceholder = NSAttributedString(string: "Please write text here...", attributes: [NSFontAttributeName:UIFont(name: "Times New Roman", size: 35.0)!])
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func translateBtnPressed(_ sender: Any) {
        if let stringToTranslate = textForTranslate.text?.lowercased() {
            onlineMechanic.downloadTranslate(stringToTranslate: stringToTranslate, completed: { (traslations) in
                self.translatedLabel.text = traslations.joined(separator: ", ")
            })
        }
    }
}
