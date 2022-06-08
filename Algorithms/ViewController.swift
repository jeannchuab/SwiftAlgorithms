//
//  ViewController.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 08/06/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testAlgos()
    }
    
    func testAlgos() {
        
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
    }

}

