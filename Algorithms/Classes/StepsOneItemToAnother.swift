//
//  StepsOneItemToAnother.swift
//  Algorithms
//
//  Created by Jeann Luiz on 27/06/23.
//

import Foundation

/*
 
 Task
 For this challenge, you will be finding the most efficient set of steps to get from one item to another.
 
 Inputs
 You will write a function which will be provided with a set of processes that each convert from one item to another.
 
 These will be provided as an array, with each process in the form of "process_name:from_item:to_item". For example, you might have a process named "smelt" that converts ore into a metal, like this: "smelt:ore:metal".
 
 You will also be passed in the initial start item and desired end item for the overall workflow.
 
 Note: For simplicity, all processes and items will be simple alphanumeric strings.
 
 Output
 Given these three inputs, your task is to determine which processes will complete the task in the shortest number of steps. Once you have done so, return the names of these processes, in order, as an array.
 
 If no steps are needed (because the start and end item is the same), or if you cannot find a valid set of processes to get from the start to the end, return an empty array.
 
 Specification
 findProcesses(startItem, endItem, tasks)
 Parameters
 startItem: String - Item to start with
 
 endItem: String - Item to try to reach
 
 tasks: Array<String> - A mapping of strings from one item to another in the format "process_name:from_item:to_item"
 
 Return Value
 Array<String> - A list of processes that convert start item to end item, if it exists
 
 Examples
 start_item    end_item    tasks    Return Value
 "field"    "bread"    ["gather:field:wheat","bake:flour:bread","mill:wheat:flour"]    ["gather","mill","bake"]
 "field"    "ferrari"    ["gather:field:wheat","bake:flour:bread","mill:wheat:flour"]    []
 "field"    "field"    ["gather:field:wheat","bake:flour:bread","mill:wheat:flour"]    []
 
 */

//NOT SOLVED: This was the algo for Andela plataform.

class Process {
    var process_name: String
    var from_item: String
    var to_item: String
    
    init(process_name: String, from_item:String, to_item: String) {
        self.process_name = process_name
        self.from_item = from_item
        self.to_item = to_item
    }
}

class Steps {
    
    static func findProcesses(_ start_item: String,_ end_item: String,_ tasks: Array<String>) -> Array<String> {
        if start_item == end_item {
            return []
        }
        else {
            var dictProcessName = [String: Process]()
            var dictFromItem = [String: Process]()
            var dictToItem = [String: Process]()
            
            for item in tasks {
                let processArray = item.split(separator: ":")
                let process_name = String(processArray[0])
                let from_item = String(processArray[1])
                let to_item = String(processArray[2])
                
                let process = Process(process_name: process_name,
                                      from_item: from_item,
                                      to_item: to_item)
                
                dictProcessName = [process_name : process]
                dictFromItem = [from_item : process]
                dictToItem = [to_item : process]
                
                print(dictProcessName)
                print(dictFromItem)
                print(dictToItem)
                
                print("End loop")
            }
            
            //The start_item is listed as a from_item
            
            let dict = dictFromItem[start_item]
            print(dict)
            
            //            guard let dict = dictFromItem[start_item] != nil else { return [] }
            //
            //            if dict. == end_item {
            //              return Array(dictFromItem[start_item].)
            //            }
            
            
        }
        
        return []
    }
}
