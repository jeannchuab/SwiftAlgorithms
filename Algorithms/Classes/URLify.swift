//
//  URLify.swift
//  Algorithms
//
//  Created by Jeann Luiz on 06/07/23.
//

import Foundation

/* Replaces all the spaces in a strign with ASCII symbol for space %20. Assume you are given the lenght of the final string: Hint: Use array of char[] */

class URLify {
    
    static func option1(input: String) -> String {
        var result = Array<Character>()
        let arrayChar = Array(input.trimmingCharacters(in: .whitespacesAndNewlines))
        
        for item in arrayChar {
            if String(item) == " " {
                result.append(contentsOf: "%20")
            } else {
                result.append(contentsOf: String(item))
            }
        }
        
        return String(result)
    }
    
    static func option2(input: String) -> String {               
        return input.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: " ", with: "%20")
    }    
}
