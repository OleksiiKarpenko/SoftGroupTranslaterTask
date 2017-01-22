//
//  File.swift
//  Translater
//
//  Created by Alexey on 1/21/17.
//  Copyright © 2017 Alexey. All rights reserved.
//

import UIKit

class OfflineVC: BaseVC, UITextFieldDelegate {
    
    @IBOutlet weak var textForTranslateTF: UITextField!
    @IBOutlet weak var translatedLabel: UILabel!
    
    @IBOutlet weak var translateBtnOutlet: BaseButton!
    
    @IBOutlet weak var onlineBtnOutlet: BaseButton!
    
    
    var offlineMechanic = OfflinePart ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textForTranslateTF.delegate = self
        self.textForTranslateTF.attributedPlaceholder = NSAttributedString(string: "Please write english text here...", attributes: [NSFontAttributeName:UIFont(name: "Times New Roman", size: 29.0)!])
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func translateBtnPressed(_ sender: Any) {
        if let stringToTranslate = textForTranslateTF.text?.lowercased() {
            offlineMechanic.downloadTranslate(stringToTranslate: stringToTranslate, completed: { (traslations) in
                if traslations.isEmpty {
                    self.translatedLabel.text = "Unfortunately we were not able to translate this text. To translate it, please use the online version of the translator."
                    self.translateBtnOutlet.isHidden = true
                    self.onlineBtnOutlet.isHidden = false
                    
                } else {
                    self.translatedLabel.text = traslations.joined(separator: ", ")
                    self.translatedLabel.textColor = .white
                }
            })
        }
    }
    
    @IBAction func onlineBtnPressed(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc: OnlineVC = storyboard.instantiateViewController(withIdentifier: "OnlineVC") as! OnlineVC
        self.present(vc, animated: true, completion: nil)
    }
}
