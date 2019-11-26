//
//  Model.swift
//  ChuckApp
//
//  Created by user on 23.08.2019.
//  Copyright © 2019 Ulko Artem. All rights reserved.


import UIKit

class Model: NSObject {
    
    func loadJoke() -> String {
        
        var returnJoke: String = ""
        
        let url = NSURL(string: "http://api.icndb.com/jokes/random")!
        
        let data = NSData(contentsOf: url as URL)
        
        do {
            let dict = try JSONSerialization.jsonObject(with: data! as Data) as! NSDictionary
            
            if dict.object(forKey: "type") as! String == "success" {
                returnJoke = (dict.object(forKey: "value") as! NSDictionary).object(forKey: "joke") as! String
            } else {
                returnJoke = "Ошибка данных"
            }
            
        } catch {
            returnJoke = "Ошибка ответа сервера"
        }
        
        return returnJoke.replacingOccurrences(of:"&quot;", with:"\"")
    }

}
