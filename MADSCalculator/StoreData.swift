//
//  StoreData.swift
//  MADSCalculator
//
//  Created by Indiawyn Gaming on 22/08/20.
//  Copyright © 2020 myorg. All rights reserved.
//

import Foundation

class StoreData {
    
    let prefrences = UserDefaults.standard
    var resarr = [String]()
    
    func StoreResult(myresult : String) {
        
        if var result : [String] = prefrences.value(forKey: "result") as? [String] {
            
            if result.count < 10 {
                
            result.append(myresult)
            resarr = result
            } else {
                
            result.removeFirst()
            result.append(myresult)
            resarr = result
                
            }
            
        } else {
            
            resarr.append(myresult)
            
        }
      
        prefrences.set(resarr, forKey: "result")
        resarr.removeAll()
        
    }
    
    func getData() -> [String]? {
        if let result : [String] = prefrences.value(forKey: "result") as? [String] {
            return result.reversed()
        }
        return resarr
    }
    
}
