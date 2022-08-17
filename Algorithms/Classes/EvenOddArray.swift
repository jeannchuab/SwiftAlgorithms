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
        
        //Puts arrayEven + ArrayOdd together and return
        
        return [Int]()
    }
            
    static func option3(input: [Int]) -> [Int] {
        var arrayEvenOdd: [Int] = []
                                
        for number in input {
            if number.isMultiple(of: 2) {
                //Insert the even (par) at the beginning
                arrayEvenOdd.insert(number, at: 0)
            } else {
                //Append the odd (impar) in the end of the array
                arrayEvenOdd.append(number)
            }
        }
        
        return arrayEvenOdd
    }
    
    static func option4(input: inout [Int]) {
        var i = 0
        var count = 0
        while (count < input.count) {
            if !input[i].isMultiple(of: 2) {
                input.append(input[i])
                input.remove(at: i) //remove() operation will be O(N) in the worst case scenario, making the whole algorithm O(N**2)
                i = i == 0 ? i : i - 1
            } else {
                i += 1
            }
            count += 1
        }

        print(input)
    }
    
    static func option5(input: inout [Int]) {
        //TODO: need to keep two pointers, one to the start and another to the end of the array, move them towards each other and swap when there’s a discrepancy
    }
}
