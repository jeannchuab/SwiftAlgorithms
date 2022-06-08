//
//  StringContainAnother.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 08/06/22.
//

import Foundation

class StringContainAnother {
                
    static func option1(input: String, subString: String) -> Bool {
        return input.uppercased().contains(subString)
    }
    
    //Let's do it without using the native method contains()
    static func option2(input: String, subString: String) -> Bool {
        return input.uppercased().range(of: subString.uppercased()) != nil
    }
    
}
