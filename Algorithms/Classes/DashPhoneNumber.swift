//
//  DashPhoneNumber.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 25/08/22.
//

import Foundation

/*
 We are given a string S representing a phone number, which we would like to reformat. String S consists of N characters: digits, spaces, and/or dashes. It contains at least two digits.
 
 Spaces and dashes in string S can be ignored. We want to reformat the given phone number is such a way that the digits are grouped in blocks of length three, separated by single dashes. If necessary, the final block or the last two blocks can be of length two.
 
 For example:
 
 S = "00-44   48 5555 8361" should become
     "004-448-555-583-61"
 
 Assume:
 - S consists only of digits (0-9), spaces, and/or dashses (-)
 - S containts at least two digits
 
 Translate:
 
 Would like to reformat a phone number string so that:
 - every third char is a "-"
 - spaces and dashes don't matter
 - if the block ends in anything other than -xxx or -xx reformat to a block of two like xx-xx (not obvious)
 
 */

class DashPhoneNumber {

    static func solution(_ s : String) -> String {
                
        let validNumbers = "0123456789"
        var result = ""
        var stringClean = ""
                        
        //We can do this or use the replacingOccurrences method, but it seems replacingOccurrences is O(n)
        for item in s {
            if validNumbers.contains(item) {
                stringClean = stringClean + String(item)
            }
        }
        
        let multiplier = stringClean.count.isMultiple(of: 4) && !stringClean.count.isMultiple(of: 3) ? 2 : 3
                        
        for (i, item) in stringClean.enumerated() {
            if validNumbers.contains(item) {
                
                result += String(item)
                
                if (i + 1).isMultiple(of: multiplier) &&
                    (i + 1) != stringClean.count {
                    result += "-"
                }
            }
        }
        
        var arrayResult = Array(result)
        if arrayResult[result.count - 2] == "-" {
            arrayResult[result.count - 2] = arrayResult[result.count - 3]
            arrayResult[result.count - 3] = "-"
        }
        
        
        
        return String(arrayResult)
    }

}


//solution("123456789")           // 123-456-789
//solution("555372654")           // 555-372-654
//solution("0 - 22 1985--324")    // 022-198-53-24
//
//// Edge cases
//solution("01")                          // 01
//solution("012")                         // 012
//solution("0123")                        // 01-23
//solution("0123       444")              // 012-34-44
//solution("------0123       444")        // 012-34-44
