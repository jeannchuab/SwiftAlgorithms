//
//  UniqueLetters.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 08/06/22.
//

import Foundation
import UIKit

class UniqueChars {
    
    /*  Are the letters unique?
        input = "123" return true
        input = "ABC" return true
        input = "AAAAA" return false
    */
    
    
    //Not the ideal: O(n)
    static func option1(input: String) -> Bool {
        var usedLetters: [Character] = []
        
        for item in input {
            if !usedLetters.isEmpty && usedLetters.contains(item) {
                return false
            }
            
            usedLetters.append(item)
        }
                
        return true
    }
    
    
    static func option2(input: String) -> Bool {
        return Set(input).count == input.count
    }
    
    static func option3(input: String) -> Bool {
        
        var foundChar = [Character:Bool]()
        let arrayChars = Array(input) //Convert string to chars array
        
        for c in arrayChars {
            if foundChar[c] != nil {
                return false
            }
            foundChar[c] = true
        }                
        
        return true
    }
}
