//
//  OfflinePart.swift
//  Translater
//
//  Created by Alexey on 1/22/17.
//  Copyright © 2017 Alexey. All rights reserved.
//

import Foundation

class OfflinePart {
    
    func downloadTranslate(stringToTranslate: String, completed: @escaping DownloadCompleted) {
        let dict = loadJson(forFilename: "english-russian")
        if let translations = dict?[stringToTranslate] as? [String] {
            completed(translations)
        } else {
            completed([])
        }
    }
    
    private func loadJson(forFilename fileName: String) -> NSDictionary? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            if let data = NSData(contentsOf: url) {
                do {
                    let dictionary = try JSONSerialization.jsonObject(with: data as Data, options: .allowFragments) as? NSDictionary
                    return dictionary
                } catch {
                    print("Error!! Unable to parse  \(fileName).json")
                }
            }
            print("Error!! Unable to load  \(fileName).json")
        }
        return nil
    }
}
