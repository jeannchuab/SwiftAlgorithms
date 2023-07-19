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
 
 PT: Pares no começo e ímpares no final
 
 Solve with O(n) efficiency and O(1) memory.
*/


class EvenOddArray {
    static func option1(input: [Int]) -> [Int] {
     
        var arrayEven: [Int] = []
        var arrayOdd: [Int] = []
        
        for number in input {
            if number % 2 == 0 { //Even (Par)
                arrayEven.append(number)
            } else { //Odd (Impar)
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
        
    static func solution5(input: [Int]) -> [Int] {
        //Keep two pointers, one to the start and another to the end of the array, move them towards each other and swap when there’s a discrepancy
        
        var result = input
        
        for i in 0..<input.count/2 {
            
            //Checking if is a odd number
            if result[i] % 2 != 0 {
                print("number is odd", result[i])
                
                if result[result.count - i - 1] % 2 == 0 {
                    print("numbers in the wrong place")
                    
                    //Swipe the numbers
                    let temp = result[i]
                    result[i] = result[result.count - i - 1]
                    result[result.count - i - 1] = temp
                }
            } else if result[i + 1] % 2 != 0 {
                print("number is odd", result[i + 1])
                
                if result[result.count - i - 1] % 2 == 0 {
                    print("numbers in the wrong place")
                    
                    //Swipe the numbers
                    let temp = result[i + 1]
                    result[i + 1] = result[result.count - i - 1]
                    result[result.count - i - 1] = temp
                }
            }
        }
        
        return result
    }
}
