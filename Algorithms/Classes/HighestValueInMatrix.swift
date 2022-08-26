//
//  HighestValueInMatrix.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 19/08/22.
//

/*
 This was a challenge to Turing, to complete in 30 minutes.
 Return the highest UNIQUE value, if the value occures more than once in a array it's not valid
 
 */

import Foundation

class HighestValueInMatrix {
    
    static func option1(cards: [[Int]]) -> Int {
        var maxValue1 = -1
        var maxValue2 = -1
        
//        let value = [[5,7,8,100,8,98,58,1,100], [1,2,3,4], [101,8,9,8,7,101,4,5,6,1]]
        
        for item in cards {
            for subItem in item {
                
                if subItem == maxValue1 {
                    maxValue1 = maxValue2
                } else if subItem > maxValue1 {
                    maxValue2 = maxValue1
                    maxValue1 = subItem
                } else if subItem > maxValue2 {
                    maxValue2 = subItem
                }
            }
        }
        
        return maxValue1
    }
}
