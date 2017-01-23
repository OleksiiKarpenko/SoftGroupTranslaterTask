//
//  Constants.swift
//  Translater
//
//  Created by Alexey on 1/22/17.
//  Copyright © 2017 Alexey. All rights reserved.
//

import Foundation
import Alamofire

let BASE_URL = "https://translate.yandex.net/api/v1.5/tr.json/translate?"
let LANG = "lang=ru&"
let API_KEY = "key="
let APP_KEY = "trnsl.1.1.20170122T085303Z.4cf1385ac88d15c5.b2eb5b07f5307b3768bd8e8ddd5857ad011a0e1a"
let PARAMETERS: Parameters = [
    "Host": "translate.yandex.net",
    "Accept" : "*/*",
    "Content-Length": 17,
    "Content-Type": "application/x-www-form-urlencoded",
    "text": ""
]

typealias DownloadCompleted = (_ strings: [String]) -> ()
let TRANSLATE_URL = "\(BASE_URL)\(LANG)\(API_KEY)\(APP_KEY)"







 
 
