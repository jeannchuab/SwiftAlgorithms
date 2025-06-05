//
//  CharFrequencie.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 07/05/25.
//

//Given a string, print how many times a char appear on that string. Examples:
//- input is "abc" we should print a = 1, b = 2, c = 3
//- input is "aaaa" we should print a = 4
//- input is "aa bb" we should print a = 4, b = 2

class CharFrequencie {
    
    static func option1(input: String) {
        
        var result: [Character: Int] = [:]
        
        for char in input where char != " " {
            result[char, default: 0] += 1
        }
        
        for (char, count) in result.sorted(by: { $0.key < $1.key }) {
            print("\(char) = \(count)")
        }
        
        print("")
    }
    
}
