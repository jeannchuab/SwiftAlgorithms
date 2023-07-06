//
//  Permutation.swift
//  Algorithms
//
//  Created by Jeann Luiz on 06/07/23.
//

import Foundation

/**
 
 Given two strings, checks if one is a permutation of the other
 
 */

class Permutation {
    static func option1(input1: String, input2: String) -> Bool {
        
        if input1.count != input2.count {
            return false
        }
        
        return input1.sorted() == input2.sorted() // O(n log n), worse then O(n)
    }
    
    static func option2(input1: String, input2: String) -> Bool {
        
        var input1Hash = [Character:Int]()
        var input2Hash = [Character:Int]()
        
        if input1.count != input2.count {
            return false
        }
            
        let input1Array = Array(input1)
        let input2Array = Array(input2)
        
        for i in 0..<input1.count {
            input1Hash[input1Array[i]] = (input1Hash[input1Array[i]] ?? 0) + 1
            input2Hash[input2Array[i]] = (input2Hash[input2Array[i]] ?? 0) + 1
        }
        
        //Comparing dict directly
        return input1Hash == input2Hash
    }
    
    static func option3(input1: String, input2: String) -> Bool {
        
        var input1Hash = [Character:Int]()
        var input2Hash = [Character:Int]()
        
        if input1.count != input2.count {
            return false
        }
            
        let input1Array = Array(input1)
        let input2Array = Array(input2)
        
        for i in 0..<input1.count {
            input1Hash[input1Array[i]] = (input1Hash[input1Array[i]] ?? 0) + 1
            input2Hash[input2Array[i]] = (input2Hash[input2Array[i]] ?? 0) + 1
        }
        
        //Looping dict
        for (key, _) in input1Hash {
            if input1Hash[key] != input2Hash[key] {
                return false
            }
        }
        
        return true
    }
}
