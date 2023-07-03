//
//  MaximumSumSubarray.swift
//  Algorithms
//
//  Created by Jeann Luiz on 03/07/23.
//

import Foundation

/*
 
 Given an array of integers, find the maximum sum subarray of the required size
 
 */


class MaximumsSumSubarray {
    static func option1(input: [Int], subArraySize: Int = 2) -> [Int] {
        var hashTable = [Int: [Int]]()
        var maxSum: Int = Int.min
        
        //It's working when subArraySize = 2, now we need to implement to use the parameter subArraySize
        
        for i in 0..<input.count - 1 { //O(n)
            if (input[i] + input[i+1]) >= maxSum {
                maxSum = input[i] + input[i+1]
                hashTable = [maxSum : [input[i], input[i+1]]]
            }
        }
        
        return hashTable[maxSum] ?? []
    }
}
