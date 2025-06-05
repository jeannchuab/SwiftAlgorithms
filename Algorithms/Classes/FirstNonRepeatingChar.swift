//
//  FirstNonRepeatingChar.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 07/05/25.
//

// Given a string, return the first character that does not repeat.
// If all characters repeat, return nil.
// Examples:
// Input: "swiss"       → Output: "w"
// Input: "aabbcc"      → Output: nil
// Input: "alphabet"    → Output: "l"

class FirstNonRepeatingChar {
    
    static func option1(input: String) -> Character? {
        
        var countDict: [Character: Int] = [:]
        
        // Counting every char
        for char in input {
            countDict[char, default: 0] += 1
        }
        
        for char in input {
            if countDict[char] == 1 {
                return char
            }
        }
        
        // If all the chars repeat return nil
        return nil
    }
}

