//
//  StringCountCharOccurrence.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 08/06/22.
//

import Foundation

class StringCountTheChars {
    
    static func option1(char: Character, input: String) {
        
        var dictCount: [Character: Int] = [:]
        
        for char in input {
            if dictCount[char] != nil {
                dictCount[char] = (dictCount[char] ?? 0) + 1
            } else {
                dictCount[char] = 1
            }
        }
        debugPrint(dictCount)
        print("char: ", char, " Count:", String(dictCount[char] ?? 0))
    }
    
    static func option2(char: Character, input: String) {
        
        let result = input.reduce(0) {
            $1 == char ? $0 + 1 : $0
        }
        
        print(result)
    }
    
}
