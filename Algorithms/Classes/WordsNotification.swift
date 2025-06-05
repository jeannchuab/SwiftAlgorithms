//
//  File.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 16/07/24.
//

/*

 Prepare a notification of the given message which will be displayed on a mobile device. The message is made of words separated by single spaces. The length of the notification is limited to K characters. If the message is too long to be displayed fully, some words from the end of the message should be cropped, keeping in mind that:
 • the notification should be as long as possible;
 • only whole words can be cropped;
 • if any words are cropped, the notification should end with " ... ; the dots should be separated from the last word by a single space;
 • the notification may not exceed the K-character limit, including the dots.
 If all the words need to be cropped, the notification is "
 '..." (three dots without a space).
 For example, for message = "And now here is my secret" and K = 15, the notification is "And now ...". Note that:
 • the notification "And ..." would be incorrect, because there is a longer correct notification;
 • the notification "And now her ..." would be incorrect, because the original message is cropped through the middle of a word;
 • the notification "And now ... " would be incorrect, because it ends with a space;
 • the notification "And now here..." would be incorrect, because there is no space before the three dots;
 • the notification "And now here ..." would be incorrect, because it exceeds the 15-character limit.
 Write a function:
 public func solution- message : inout String, - K : Int) -> String
 that, given a string message and an integer K, returns the notification to display, which has no more than K characters, as described above.
 Examples:
 1. For message = "And now here is my secret" and K = 15, the function should return "And now ...", as explained above.
 2. For message = "There is an animal with four legs" and K = 15, the function should return "There is an ..."
 3. For message = "super dog" and K = 4, the function should return"
 ..."
 4. For message = "how are you" and K = 20, the function should return "how are you".
 Assume that:
 • Kis an integer within the range [3..500];
 • the length of string message is within the range (1..500];
 • string message is made of English letters ('a'-'Z', 'A-Z') and spaces (* ');
 • message does not contain spaces at the beginning or at the end;
 • words are separated by a single space (there are never two or more consecutive spaces).
 In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment.
 
*/

import Foundation

class WordsNotification {
    static public func solution2(message: inout String, K: Int) -> String {
        // Check if the message length is less than or equal to K
        if message.count <= K {
            return message
        }

        // Split the message into words
        let words = message.split(separator: " ")
        
        // Initialize variables to build the notification
        var currentLength = 0
        var notification = ""
        
        for word in words {
            // Calculate the length if we add this word
            let lengthWithWord = currentLength + word.count + (currentLength > 0 ? 1 : 0) // +1 for space if it's not the first word
            
            if lengthWithWord > K - 4 { // 4 characters for " ..."
                // If adding the next word exceeds the limit with the dots, stop
                break
            }
            
            // Add the word to the notification
            if currentLength > 0 {
                notification += " "
            }
            notification += word
            currentLength = lengthWithWord
        }
        
        // If no words fit within the limit, return "..."
        if notification.isEmpty {
            return "..."
        }
        
        // If the notification is already within K characters and doesn't need to be truncated
        if notification.count <= K {
            if notification.count == message.count {
                return notification
            } else {
                return notification + " ..."
            }
        }
        
        return notification
    }
    
    static func solution1(message: inout String, K: Int) -> String {
        guard K > 0 else { return "" }
        
        // Check if the message length is less than or equal to K
        if message.count <= K {
            return message
        }

        // Split the message into words
        let words = message.split(separator: " ")
        
        // Initialize variables to build the notification
        var currentLength = 0
        var notification = ""
        
        for word in words {
            // Calculate the length if we add this word
            let lengthWithWord = currentLength + word.count + (currentLength > 0 ? 1 : 0) // +1 for space if it's not the first word
            
            if lengthWithWord > K - 4 { // 4 characters for " ..."
                // If adding the next word exceeds the limit with the dots, stop
                break
            }
            
            // Add the word to the notification
            if currentLength > 0 {
                notification += " "
            }
            notification += word
            currentLength = lengthWithWord
            
            print("Log: ", currentLength)
        }
        
        
        // If the current length is less than or equal to K, no need to add dots
        if currentLength <= K {
            return notification
        } else {
            return notification + " ..."
        }
    }
}


