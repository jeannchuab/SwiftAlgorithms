//
//  EvenOddArray.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 27/07/22.
//

import Foundation

/*
Write a function that takes an array of Random Integers as the input and
 returns an array where all the Even numbers are at the beginning and all the Odd numbers are at the end.
 Solve with O(n) efficiency and O(1) memory.
*/


class EvenOddArray {
    static func option1(input: [Int]) -> [Int] {
     
        var arrayEven: [Int] = []
        var arrayOdd: [Int] = []
        
        for number in input {
            if number % 2 == 0 { //Even
                arrayEven.append(number)
            } else { //Odd
                arrayOdd.append(number)
            }
        }
        
        print("\("Even: Par:"): \(arrayEven)")
        print("\("Odd: Impar:"): \(arrayOdd)")
        
        return [Int]()
        
    }
    
    static func option2(input: [Int]) -> [Int] {
        var arrayEvenOdd: [Int] = []
                                
        for number in input {
            if arrayEvenOdd.isEmpty {
                arrayEvenOdd.append(number)
            } else {
                
                if number.isMultiple(of: 2) { //Even par
                    if let firstEvenIndex = arrayEvenOdd.firstIndex(where: { $0.isMultiple(of: 2) }) {
                        arrayEvenOdd.insert(number, at: firstEvenIndex)
                    } else {
                        arrayEvenOdd.insert(number, at: 0)
                    }
                } else {
                    if let firstOddIndex = arrayEvenOdd.firstIndex(where: { !$0.isMultiple(of: 2) }) {
                        arrayEvenOdd.insert(number, at: firstOddIndex)
                    } else {
                        arrayEvenOdd.append(number)
                    }
                }
            }
        }
        
        return arrayEvenOdd
    }
    
    static func option3(input: [Int]) -> [Int] {
        var arrayEvenOdd: [Int] = []
                                
        for number in input {
            if number.isMultiple(of: 2) {
                //Insert the even at the beginning
                arrayEvenOdd.insert(number, at: 0)
            } else {
                //Append the odd in the end of the array
                arrayEvenOdd.append(number)
            }
        }
        
        return arrayEvenOdd
    }
}

