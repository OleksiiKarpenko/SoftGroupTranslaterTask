//
//  ViewController.swift
//  Translater
//
//  Created by Alexey on 1/20/17.
//  Copyright © 2017 Alexey. All rights reserved.
//

import UIKit
import Alamofire

class HomeVC: UIViewController {

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

  
    @IBAction func offlineBtnPressed(_ sender: Any) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc: OfflineVC = storyboard.instantiateViewController(withIdentifier: "OfflineVC") as! OfflineVC
        
        self.present(vc, animated: true, completion: nil)
        
    }

    @IBAction func onlineBtnPressed(_ sender: Any) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc: OnlineVC = storyboard.instantiateViewController(withIdentifier: "OnlineVC") as! OnlineVC
        
        self.present(vc, animated: true, completion: nil)
    }



}

