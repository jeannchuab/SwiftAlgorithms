//
//  MaxRepeatedWords.swift
//  Algorithms
//
//  Created by Jeann Luiz on 30/08/23.
//

import Foundation

/*
 Given a string input and a string word, find the max number of times the word is repeated in input.
 The repeated word should be concatenated and next to each other.
 */

class MaxRepeatedWords {
    static func option1(input: String, word: String) -> Int {
        let arrayInput = Array(input)
        var count = 0
        
        for i in 0...input.count - 1 {
            
            // To avoid index out of range
            if i + word.count == input.count + 1 {
                break
            }
            
            let range = arrayInput[i...(i + word.count - 1)]
            
            if word == String(range) {
                count += 1
            }
            
            print("Word: " + word)
            print("Range: " + range)
        }
        
        return count
    }
}
