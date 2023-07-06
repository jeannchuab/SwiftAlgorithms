//
//  Fibonacci.swift
//  Algorithms
//
//  Created by Jeann Luiz on 03/07/23.
//

import Foundation

struct A {
    var number = 10

    //The solution was to add the lazy word,
    lazy var fibonacciOfNumber: Int = {
        return fibonacci(of: number)
    }()
        
    func fibonacci(of num: Int) -> Int {
        if num < 2 {
            return num
        } else {
            return fibonacci(of: num - 1) + fibonacci(of: num - 2)
        }
    }
}

func solution() -> Int {
    var a = A()
    return a.fibonacciOfNumber
}
