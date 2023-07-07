//
//  ValidBrackets.swift
//  Algorithms
//
//  Created by Jeann Luiz on 07/07/23.
//

import Foundation
/**
 
 Give the brackets sequence, validade if all open brackets have a close one
 Example:
 
 "(())" = true
 "()()()" = true
 "(((())))" = true
 "()(((())))" = true
 
 "()())(" = false
 "())(" = false
 ")()()(" = false
 ")" = false
 ")))" = false
 ")()(" = false
   
 **/

class ValidBrackets {
    static func option1(input: String) -> Bool {
        var array: [Character] = []
        
        //The string must contain a even number to be valid
        if input.count % 2 != 0 {
            return false
        }
        
        for item in input {
            if item == "(" {
                array.append(item)
            } else if !array.isEmpty {
                array.removeLast()
            }
        }
        return array.isEmpty
    }    
}
