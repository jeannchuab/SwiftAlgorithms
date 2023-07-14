//
//  ValidBrackets.swift
//  Algorithms
//
//  Created by Jeann Luiz on 07/07/23.
//

import Foundation
/**
 
 Give the brackets sequence, validade if all open brackets have a close one
 Example:
 
 "(())" = true
 "()()()" = true
 "(((())))" = true
 "()(((())))" = true
 
 "()())(" = false
 "())(" = false
 ")()()(" = false
 ")" = false
 ")))" = false
 ")()(" = false
   
 **/

class ValidBrackets {
    static func option1(input: String) -> Bool {
        var parentheses: [Character] = []
        var brackets: [Character] = []
        var braces: [Character] = []
        
        //The string must contain a even number to be valid
        if input.count % 2 != 0 {
            return false
        }
        
        for item in input {
            switch item {
            case "(" : parentheses.append(item)
            case "[" : brackets.append(item)
            case "{" : braces.append(item)
            case ")" :
                if !parentheses.isEmpty {
                    parentheses.removeLast()
                } else {
                    return false
                }
            case "]" :
                if !brackets.isEmpty {
                    brackets.removeLast()
                } else {
                    return false
                }
            case "}" :
                if !braces.isEmpty {
                    braces.removeLast()
                } else {
                    return false
                }
            default:
                return false                                                
            }
        }
        return (parentheses.isEmpty && brackets.isEmpty && braces.isEmpty)
    }
    
    static func solution2(input: String) -> Bool {
        
        guard input.count % 2 == 0 else { return false }
                
            var stack: [Character] = []
            
            for ch in input {
                switch ch {
                case "(": stack.append(")")
                case "[": stack.append("]")
                case "{": stack.append("}")
                default:
                    if stack.isEmpty || stack.removeLast() != ch {
                        return false
                    }
                }
            }
            
            return stack.isEmpty
    }
}
