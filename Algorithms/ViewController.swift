//
//  ViewController.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 08/06/22.
//

import UIKit
import Combine

protocol MyProtocol {
    
}

struct MyTest: MyProtocol {
    let value: Int = 0
}

extension UIViewController {
    
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testAlgos()
//        let years = [15, 2, 67, 4, 5]
//        let sum = years.filter({ $0 < 10 }).map({ $0 * 2 }).reduce(5, +)
//        print(sum)
    }
    
    //TODO: Search for it
    func doSomething(){
        defer { print("a") }
        defer { print("b") }
        defer { print("c") }
        print("d")
    }
    
    
    func testAlgos() {
        
//        var result = ""
        
        /*
        
        //Unique Letters
        var result = UniqueLetters.option1(input: "AAAABBBBCCCCC")
        print("Result UniqueLetters 1: ", result)
        
        result = UniqueLetters.option1(input: "ABC")
        print("Result UniqueLetters 2: ", result)
        
        
        //Palindrome
        result = Palindrome.option1(input: "rotator")
        print("Result Palindrome: ", result)
        
        result = Palindrome.option1(input: "Rats live on no evil star")
        print("Result Palindrome: ", result)
        
        //String contain same char
        result = StringContainSameChar.option1(input1: "abcc", input2: "cabc")
        print("Result StringContainSameChar: ", result)
                
        //String contain Another
        result = StringContainAnother.option1(input: "abcc", subString: "cabc")
        print("Result StringContainAnother: ", result)
        
        result = StringContainAnother.option2(input: "abcc", subString: "a")
        print("Result StringContainAnother: ", result)
        */
        
        // Count chars in string
//        StringCountTheChars.option1(char: "a", input: "The rain in Spain")
//        StringCountTheChars.option1(char: "i", input: "Mississippi")
        
                                        
//        var result = EvenOddArray.option3(input: [0,1,2,3,4,5,6,7,80,90,101])
//        print(result)
//        
//        result = EvenOddArray.option3(input: [0])
//        print(result)
//        
//        result = EvenOddArray.option3(input: [0,2,4,6,8,10])
//        print(result)
//        
//        result = EvenOddArray.option3(input: [1,3,5,7,9])
//        print(result)
//        
//        result = EvenOddArray.option3(input: [1,3,50,5,7,9])
//        print(result)
        
//        var inputArray = [7,2,1,3,50,60,5,11]
//        EvenOddArray.option4(input: &inputArray)
//
//        var text = "The rain in Spain"
//        print(CountChar.option1(input: text, char: "a"))
//        print(CountChar.option1(input: text, char: "i"))
//        print(CountChar.option2(input: text, char: "a"))
//        print(CountChar.option2(input: text, char: "i"))
//        print(CountChar.option3(input: text, char: "a"))
//        print(CountChar.option3(input: text, char: "i"))
//        print(CountChar.option4(input: text, char: "a"))
//        print(CountChar.option4(input: text, char: "i"))
//
//        text = "The rain in Spain"
//        print(RemoveDuplicateFromString.option1(input: text))
                        
//        value = [[5,5,4], [3,3], [101,101]]
//        print(HighestValueInMatrix.option1(cards: value))
        
//        print(ArrayRotation.solution(A: [], K: 0))
//        print(ArrayRotation.solution(A: [1,2,3,4,5], K: 1))
//        print(ArrayRotation.solution(A: [1,2,3,4,5], K: 2))
//        print(ArrayRotation.solution(A: [1,2,3,4,5], K: 3))
//        print(ArrayRotation.solution(A: [1,2,3,4,5], K: 4))
//        print(ArrayRotation.solution(A: [1,2,3,4,5], K: 5))
        
        print(DashPhoneNumber.solution("00-44   48 5555 8361"))
        print(DashPhoneNumber.solution("00-44   48 5555 83610"))

        print(DashPhoneNumber.solution("123456789"))
        print(DashPhoneNumber.solution("12345"))
        print(DashPhoneNumber.solution("0000"))
        print(DashPhoneNumber.solution("00"))
        print(DashPhoneNumber.solution("012 345 6"))
        print(DashPhoneNumber.solution("------0123       444"))
        
        //12345-67
    }

}

