//
//  LongestDistinctRoute.swift
//  Algorithms
//
//  Created by Jeann Luiz on 24/10/23.
//

import Foundation

/*
  You are given a string path that represents a series of islands someone visited. Each character in the string stands for an island. Find the longest part of the trip where the traveler did not visit the same island more than once. Return the length of this longest unique part of the trip.
 Tags: Longest, unique, path, distinct, route
 */

class LongestDistinctRoute {
    static func option1(input: String) -> Int {
        var charIndexMap: [Character: Int] = [:]  // Keeps track of the last index where each character was seen.
        var maxLength = 0
        var start = 0  // Start of the current unique path.

        for (end, char) in input.enumerated() {
            if let lastIndex = charIndexMap[char] {
                start = max(start, lastIndex + 1)  // Move the start of the window to the next position after the last occurrence of the character.
            }
            charIndexMap[char] = end
            maxLength = max(maxLength, end - start + 1)
        }

        return maxLength
    }
    
    static func option2(input: String) -> Int {
        var maxLength = 0
        var left = 0
        var right = 0
        var visited = Set<Character>()

        while right < input.count {
            let char = input[input.index(input.startIndex, offsetBy: right)]
            if !visited.contains(char) {
                visited.insert(char)
                maxLength = max(maxLength, visited.count)
                right += 1
            } else {
                let leftChar = input[input.index(input.startIndex, offsetBy: left)]
                visited.remove(leftChar)
                left += 1
            }
        }

        return maxLength
    }
}
