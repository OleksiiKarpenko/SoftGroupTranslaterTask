//
//  OnlinePart.swift
//  Translater
//
//  Created by Alexey on 1/22/17.
//  Copyright © 2017 Alexey. All rights reserved.
//

import UIKit
import Alamofire

class OnlinePart {
    
    func downloadTranslate(stringToTranslate: String, completed: @escaping DownloadCompleted) {
        var params = PARAMETERS
        params["text"] = stringToTranslate
        
        Alamofire.request(TRANSLATE_URL, parameters: params).responseJSON { response in
            
            let result = response.result
            
            if let dict = result.value as? [String: Any] {
                if let translations = dict ["text"] as? [String] {
                   completed(translations)
                }
            }
        }
    }
}
