//
//  StringEdits.swift
//  Algorithms
//
//  Created by Jeann Luiz on 06/07/23.
//

import Foundation

/*
 There are three types of edits that can be performed on strings:
    - Insert a char
    - Remove a char
    - Replace a char
 
 Given two strings, write a function to check if they are one or zero edits away
 */

class StringEdits {
    
    //Return true if the input1 is only one edit away from input2
    static func oneEdit(input1: String, input2: String) -> Bool {
        
        let input1Array = Array(input1)
        let input2Array = Array(input2)
        
        var input1Hash = [Character: Int]()
        var input2Hash = [Character: Int]()
        
        //Count chars in input1
        for i in 0..<input1.count {
            if input1Hash[input1Array[i]] != nil {
                input1Hash[input1Array[i]] = (input1Hash[input1Array[i]] ?? 0) + 1
            } else {
                input1Hash[input1Array[i]] = 1
            }
        }
        
        //Count chars in input2
        for i in 0..<input2.count {
            if input2Hash[input2Array[i]] != nil {
                input2Hash[input2Array[i]] = (input2Hash[input2Array[i]] ?? 0) + 1
            } else {
                input2Hash[input2Array[i]] = 1
            }
        }
        
        //Debug
        debugPrint(input1Hash)
        debugPrint(input2Hash)
                        
        //How manu edits was made between the strings
        var qtdEdits = 0
        
        //Now I need to loop thought the hash with more items:
        if input1.count >= input2.count {
            for (key, value) in input1Hash {
                if value != input2Hash[key] {
                    //Saving how many edits are between the values
                    qtdEdits = qtdEdits + abs(value.distance(to: input2Hash[key] ?? 0))
                }
            }
            
        } else {
            for (key, value) in input2Hash {
                if value != input1Hash[key] {
                    //Saving how many edits are between the values
                    qtdEdits = qtdEdits + abs(value.distance(to: input1Hash[key] ?? 0))
                }
            }
        }
        
        //Saving how many edits are between the values
        return qtdEdits == 1
    }
    
}
