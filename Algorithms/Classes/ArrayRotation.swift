//
//  ArrayRotation.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 23/08/22.
//

import Foundation

/*
 Rotate array to right N times.
 https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/
 
 For example, given

     A = [3, 8, 9, 7, 6]
     K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:

     [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
     [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
     [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]

 */

class ArrayRotation {
    //O(n^n)
    static func solution(A: [Int], K: Int) -> [Int] {
            
        guard !A.isEmpty else { return [] }
        guard K > 0 else { return A }
        
        var newArray = A
        
        for _ in 1...K { //O(n)
            newArray = rotateRightOnce(A: newArray)
        }
        
        return newArray
    }

    private static func rotateRightOnce(A: [Int]) -> [Int] {
        var newArray = A
        for i in 0..<A.count - 1 { //O(n)
            newArray[i + 1] = A[i]
        }
        newArray[0] = A[A.count - 1]
        return newArray
    }
}

