//
//  Palindrome.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 08/06/22.
//

import Foundation

class Palindrome {
    static func option1(input: String) -> Bool {
        return input.lowercased().reversed() == Array(input.lowercased())
    }
}

